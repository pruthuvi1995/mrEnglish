import 'dart:convert';

import 'package:mr_english/api/notification_api.dart';

import '../models/http_exception.dart';
import '../providers/auth.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../size_config.dart';
import 'default_button.dart';
import 'package:http/http.dart' as http;

enum RegisterMode { Name, NICNo, Password, Final }

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  RegisterMode _registerMode = RegisterMode.Name;
  var _isLoading = false;
  String _referenceNo;

  Map<String, String> _registerData = {
    "firstName": "",
    "lastName": "",
    "nICNo": "",
    "password": "",
    "phoneNo": ""
  };
  // String nICNo;
  // String password;

  final _passwordController = TextEditingController();
  var errorMessage;

  @override
  void initState() {
    super.initState();
    NotificationApi.init(initScheduled: true);
    listenNotifications();
  }

  void listenNotifications() =>
      NotificationApi.onNotifications.stream.listen(onClickedNotification);

  void onClickedNotification(String payload) => {};
  // Navigator.of(context).pushNamed(payload);

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          'Error 1ක් තියනවා.',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(17.5),
          ),
        ),
        content: Text(
          message,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15),
          ),
        ),
        actions: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.of(ctx).pop();
                Navigator.of(ctx).pop();
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
      if (_registerMode == RegisterMode.Password) {
        await Provider.of<Auth>(context, listen: false).signup(
            _registerData['firstName'],
            _registerData['lastName'],
            _registerData['nICNo'],
            _registerData['password'],
            '0000000000');
      }
    } on HttpException catch (error) {
      if (error.toString().contains('Duplicate field value entered')) {
        errorMessage = 'ඔබ ලබා දුන් ජාතික හැදුනුම්පත් අංකය භාවිතා කොට ඇත.';
      } else {
        errorMessage = 'Register වීම අසාර්ථකයි.';
      }
      _showErrorDialog(errorMessage);
    } catch (error) {
      var errorMessage = 'ඔබව මේ මොහොතේ හඳුනාගත නොහැක. පසුව උත්සහා කරන්න.';
      _showErrorDialog(errorMessage);
    }

    setState(() {
      _isLoading = false;
    });

    _switchAuthMode();
    if (_registerMode == RegisterMode.Final && errorMessage == null) {
      NotificationApi.showNotification(
        title: 'Welcome to Mr English',
        body: 'Good Luck for your English journey',
        payload: '/',
      );

      Navigator.popAndPushNamed(context, '/');
    }
  }

  void _switchAuthMode() {
    if (_registerMode == RegisterMode.Name) {
      setState(() {
        _registerMode = RegisterMode.NICNo;
      });
    } else if (_registerMode == RegisterMode.NICNo) {
      setState(() {
        _registerMode = RegisterMode.Password;
      });
    } else if (_registerMode == RegisterMode.Password) {
      setState(() {
        _registerMode = RegisterMode.Final;
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
              if (_registerMode == RegisterMode.Name)
                Container(
                  child: Text(
                    'ඔබේ මුල් නම හා අග නම ඇතුළත් කරන්න.',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                    ),
                  ),
                ),
              if (_registerMode == RegisterMode.NICNo)
                Container(
                  child: Text(
                      'ඔබේ හෝ ඔබගේ මවගේ හෝ ඔබගේ පියාගේ හෝ ජාතික හැඳුනුම්පත් අංකය ඇතුළත් කරන්න.'),
                ),
              if (_registerMode == RegisterMode.Password)
                Container(
                  child: Text(
                      'මතක තබා ගැනීමට පහසු අකුරු හෝ ඉලක්කම් 8කට වඩා වැඩි password  එක දෙවරක් ඇතුලත් කරන්න. මෙය මතක තබා ගැනීම අනිවාර්ය වේ.'),
                ),
              SizedBox(
                height: getProportionateScreenWidth(25),
              ),
              Form(
                  key: _formKey,
                  child: Column(children: [
                    if (_registerMode == RegisterMode.Name)
                      buildFirstNameFormField(),
                    if (_registerMode == RegisterMode.Name)
                      SizedBox(
                        height: getProportionateScreenWidth(25),
                      ),
                    if (_registerMode == RegisterMode.Name)
                      buildLastNameFormField(),
                    if (_registerMode == RegisterMode.Name)
                      SizedBox(
                        height: getProportionateScreenWidth(25),
                      ),
                    if (_registerMode == RegisterMode.NICNo)
                      buildNICNoFormField(),
                    if (_registerMode == RegisterMode.NICNo)
                      SizedBox(
                        height: getProportionateScreenWidth(25),
                      ),
                    if (_registerMode == RegisterMode.Password)
                      buildPasswordFormField(),
                    if (_registerMode == RegisterMode.Password)
                      SizedBox(
                        height: getProportionateScreenWidth(25),
                      ),
                    if (_registerMode == RegisterMode.Password)
                      buildConfirmPasswordFormField(),
                    if (_registerMode == RegisterMode.Password)
                      SizedBox(
                        height: getProportionateScreenWidth(25),
                      ),
                    if (_registerMode != RegisterMode.Final)
                      DefaultButton(
                        text: 'Next',
                        press: () => {
                          (_isLoading) ? CircularProgressIndicator() : _submit()
                        },
                      ),
                  ])),
            ],
          );
  }

  TextFormField buildNICNoFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (value) => _registerData['nICNo'] = value,
      decoration: InputDecoration(
        labelText: 'NIC no ( ජාතික හැඳුනුම්පත් අංකය )',
        hintText: 'Enter your NIC no',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        if (value.isEmpty || value.length < 10) {
          return 'Input the NIC no';
        }
      },
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.name,
      controller: _passwordController,
      validator: (value) {
        if (value.isEmpty || value.length < 8) {
          return 'Password is too short';
        }
        return null;
      },
      onSaved: (value) => _registerData['password'] = value,
      decoration: InputDecoration(
        labelText: 'password',
        hintText: 'Enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value != _passwordController.text) {
          return 'Password do not match';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Confirm password',
        hintText: 'Confirm your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (value) => _registerData['firstName'] = value,
      decoration: InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Input the first name';
        }
      },
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (value) => _registerData['lastName'] = value,
      decoration: InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter your last name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Input the last name';
        }
      },
    );
  }
}
