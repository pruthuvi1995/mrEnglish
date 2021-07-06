import 'dart:convert';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/http_exception.dart';
import '../providers/auth.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../size_config.dart';
import 'default_button.dart';
import 'package:http/http.dart' as http;

enum SubscribeMode { PhoneNo, PinVerify, Final }

class SubscribeForm extends StatefulWidget {
  final List details;
  SubscribeForm(this.details);
  @override
  _SubscribeFormState createState() => _SubscribeFormState(details);
}

class _SubscribeFormState extends State<SubscribeForm> {
  final List details;
  _SubscribeFormState(this.details);
  final _formKey = GlobalKey<FormState>();
  SubscribeMode _subscribeMode = SubscribeMode.PhoneNo;
  var _isLoading = false;
  String _referenceNo;
  String _telNo;

  Map<String, String> _subscribeData = {"phoneNo": "", "pinNo": ""};
  // String nICNo;
  // String password;

  final _passwordController = TextEditingController();
  var errorMessage;

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Error 1ක් තියනවා.'),
        content: Text(message),
        actions: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.of(ctx).pop();
                // Navigator.pushNamed(context, SignInScreen.routeName);
              },
              child: Text('OK'))
        ],
      ),
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      // Invalid!
      return;
    }
    _formKey.currentState.save();
    setState(() {
      _isLoading = true;
    });

    try {
      if (_subscribeMode == SubscribeMode.PinVerify) {
        bool verifyPin = await _verifyPin(_subscribeData['pinNo']);
        if (verifyPin) {
          // Provider.of<Auth>(context, listen: false).updateSubscription();
          setState(() {});
          final url = 'https://mrenglish.tk/api/v1/auth/updateDetails';
          await http.put(
            Uri.parse(url),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
              HttpHeaders.authorizationHeader: "Bearer ${details[2]}",
            },
            body: jsonEncode(
              {
                'isSubscribed': true,
                'phoneNo': _telNo,
              },
            ),
          );

          await Provider.of<Auth>(context, listen: false)
              .updatePhoneNumber(_telNo);
          setState(() {});
          // await http.put(
          //   url,
          //   headers: <String, String>{
          //     'Content-Type': 'application/json; charset=UTF-8',
          //     HttpHeaders.authorizationHeader: "Bearer ${details[2]}",
          //   },
          //   body: jsonEncode(
          //     {'phoneNumber': _telNo},
          //   ),
          // );
        }
      } else if (_subscribeMode == SubscribeMode.PhoneNo) {
        print(_subscribeMode);
        await _requestPin(_subscribeData['phoneNo']);
        // await Provider.of<Auth>(context, listen: false)
        //     .updatePhoneNumber(_subscribeData['phoneNo']);
        // setState(() {});
        // final url = 'https://mrenglish.tk/api/v1/auth/updateDetails';
        // await http.put(
        //   url,
        //   headers: <String, String>{
        //     'Content-Type': 'application/json; charset=UTF-8',
        //     HttpHeaders.authorizationHeader: "Bearer ${details[2]}",
        //   },
        //   body: jsonEncode(
        //     {'phoneNumber': _subscribeData['phoneNo']},
        //   ),
        // );
      }
    } catch (error) {
      print(error);
      throw (error);
    }

    // try {
    //   if (_registerMode == RegisterMode.PinVerify) {
    //     await Provider.of<Auth>(context, listen: false).signup(
    //         _registerData['firstName'],
    //         _registerData['lastName'],
    //         _registerData['nICNo'],
    //         _registerData['password'],
    //         _registerData['phoneNo']);
    //   }
    // } on HttpException catch (error) {
    //   if (error.toString().contains('Duplicate field value entered')) {
    //     errorMessage = 'ඔබ ලබා දුන් ජාතික හැදුනුම්පත් අංකය භාවිතා කොට ඇත.';
    //   } else {
    //     errorMessage = 'Register වීම අසාර්ථකයි.';
    //   }
    //   _showErrorDialog(errorMessage);
    // } catch (error) {
    //   var errorMessage = 'ඔබව මේ මොහොතේ හඳුනාගත නොහැක. පසුව උත්සහා කරන්න.';
    //   _showErrorDialog(errorMessage);
    // }

    setState(() {
      _isLoading = false;
    });

    _switchAuthMode();
    if (_subscribeMode == SubscribeMode.Final && errorMessage == null) {
      Navigator.popAndPushNamed(context, '/');
    }
  }

  Future<void> _requestPin(String phoneNumber) async {
    // if (!_formKey.currentState.validate()) {
    //   // Invalid!
    //   return;
    // }
    // _formKey.currentState.save();
    // setState(() {
    //   _isLoading = true;
    // });
    const url = 'https://mrenglish.tk/api/v1/dayDetails/getOtp';
    Map<String, String> data = {"phoneNo": phoneNumber};
    String body = jsonEncode(data);
    try {
      final http.Response response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: body,
      );

      final responseData = json.decode(response.body);
      if (responseData['data']['statusCode'] != 'S1000') {
        throw HttpException(responseData['data']['statusDetail']);
      }
      _referenceNo = responseData['data']['referenceNo'];
    } on HttpException catch (error) {
      if (error.toString().contains('Duplicate field value entered')) {
        errorMessage = 'ඔබට හිමි ඉල්ලීම් වාර ගණන අවසන්. පසුව උත්සහා කරන්න.';
      } else if (error.toString().contains('user already registered')) {
        errorMessage = 'ඔබේ දුරකථන අංකයෙන් දැනටමත් සේවාව ලබා ගනී.';
      } else {
        errorMessage = 'Subscribe වීම අසාර්ථකයි.';
      }
      _showErrorDialog(errorMessage);
    } catch (error) {
      var errorMessage = 'ඔබව මේ මොහොතේ හඳුනාගත නොහැක. පසුව උත්සහා කරන්න.';
      _showErrorDialog(errorMessage);
    }
  }

  Future<bool> _verifyPin(String pin) async {
    // if (!_formKey.currentState.validate()) {
    //   // Invalid!
    //   return;
    // }
    // _formKey.currentState.save();
    // setState(() {
    //   _isLoading = true;
    // });
    const url = 'https://mrenglish.tk/api/v1/dayDetails/verify';
    const url2 = 'https://mrenglish.tk/api/v1/auth/updateDetails';

    final prefs = await SharedPreferences.getInstance();
    final extractedUserData =
        json.decode(prefs.getString('userData')) as Map<String, Object>;
    String _token = extractedUserData['token'];

    Map<String, String> data = {
      "referenceNo": _referenceNo,
      "otp": pin,
    };
    String body = jsonEncode(data);
    try {
      final http.Response response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: body,
      );

      final responseData = json.decode(response.body);

      if (responseData['data']['statusCode'] != 'S1000') {
        throw HttpException(responseData['statusDetail']);
      }

      _telNo = (responseData['data']['subscriberId']);

      // await Provider.of<Auth>(context, listen: false).updatePhoneNumber(_telNo);
      // print('5555555555555555555');
      // await http.put(
      //   url2,
      //   headers: <String, String>{
      //     'Content-Type': 'application/json; charset=UTF-8',
      //     HttpHeaders.authorizationHeader: "Bearer $_token",
      //   },
      //   body: jsonEncode(
      //     {'phoneNo': _telNo},
      //   ),
      // );
      // print('6666666666666666');
    } on HttpException catch (error) {
      // if (error.toString().contains('Duplicate field value entered')) {
      //   errorMessage = 'ඔබ ලබා දුන් ජාතික හැදුනුම්පත් අංකය භාවිතා කොට ඇත.';
      // } else {
      //   errorMessage = 'Register වීම අසාර්ථකයි.';
      // }
      _showErrorDialog(error.toString());
      return false;
    } catch (error) {
      var errorMessage = 'ඔබව මේ මොහොතේ හඳුනාගත නොහැක. පසුව උත්සහා කරන්න.';
      _showErrorDialog(errorMessage);
      return false;
    }

    return true;
  }

  void _switchAuthMode() {
    if (_subscribeMode == SubscribeMode.PhoneNo) {
      setState(() {
        _subscribeMode = SubscribeMode.PinVerify;
      });
    } else if (_subscribeMode == SubscribeMode.PinVerify) {
      setState(() {
        _subscribeMode = SubscribeMode.Final;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Column(
            children: [
              if (_subscribeMode == SubscribeMode.PhoneNo)
                Container(
                  child: Text(
                      'ඔබ ළඟ දැනට ඇති Dialog, Hutch හෝ Airtel දුරකථන අංකයක් පමණක් ඇතුළත් කරන්න. වෙනත් දුරකථන ජාල වලංගු නොවේ. 07xxxxxxxx ආකාරයට අංකය ඇතුළත් කිරීම අනිවාර්ය වේ. මේ සඳහා කිසිදු දෛනික ගාස්තුවක් අය නොකරේ. නමුත් ඔබ ලබා ගන්නා පාඩම අනුව ඔබ කැමතිනම් පමණක් rs.5 + බදු මුදලක් හෝ ඊට වඩා වැඩි මුදලක් ඔබෙන් අය කර ගනු ලැබේ.'),
                ),
              if (_subscribeMode == SubscribeMode.PinVerify)
                Container(
                  child: Text(
                      'ඔබ ඇතුළත් කල දුරකථන අංකයට ලැබුණු pin අංකය ඇතුළත් කරන්න.ලැබුණේ නැත්නම් මඳක් රැදී සිටින්න.'),
                ),
              SizedBox(
                height: getProportionateScreenHeight(45),
              ),
              Form(
                  key: _formKey,
                  child: Column(children: [
                    if (_subscribeMode == SubscribeMode.PhoneNo)
                      buildPhoneNoFormField(),
                    SizedBox(
                      height: getProportionateScreenHeight(30),
                    ),
                    if (_subscribeMode == SubscribeMode.PinVerify)
                      buildVerifyPhoneNoFormField(),
                    SizedBox(
                      height: getProportionateScreenHeight(30),
                    ),
                    DefaultButton(
                      text: 'Next',
                      press: () => {
                        (_isLoading) ? CircularProgressIndicator() : _submit()
                      },
                    )
                  ])),
            ],
          );
  }

  TextFormField buildPhoneNoFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (value) => {
        _subscribeData['phoneNo'] = value,
        // _requestPin(value),
      },
      decoration: InputDecoration(
        labelText: 'Phone number',
        hintText: 'Enter your phone number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        if (value.isEmpty || value.length < 10 || value[0] != '0') {
          return 'Input the phone number';
        }
        if (value[1] != '7' || value[2] == '1' || value[2] == '0') {
          return 'Input a Dialog, Hutch or Airtel phone number';
        }
      },
    );
  }

  TextFormField buildVerifyPhoneNoFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (value) => _subscribeData['pinNo'] = value,
      decoration: InputDecoration(
        labelText: 'Pin number',
        hintText: 'Enter your pin number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Input the pin number';
        }
      },
    );
  }
}
