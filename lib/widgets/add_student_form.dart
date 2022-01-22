import 'dart:convert';
import 'dart:io';

import 'package:mr_english/screens/add_student_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/http_exception.dart';
import '../providers/auth.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../size_config.dart';
import 'default_button.dart';
import 'package:http/http.dart' as http;

enum AddStudentMode { nICNo, grade, Final }

class AddStudentForm extends StatefulWidget {
  // final List details;
  // SubscribeForm(this.details);
  @override
  _AddStudentFormState createState() => _AddStudentFormState();
}

class _AddStudentFormState extends State<AddStudentForm> {
  // final List details;
  // _SubscribeFormState(this.details);
  final _formKey = GlobalKey<FormState>();
  AddStudentMode _addStudentMode = AddStudentMode.nICNo;
  var _isLoading = false;
  // String _referenceNo;
  // String _telNo;

  Map<String, String> _addStudentData = {'nICNo': '', 'className': ''};
  // String nICNo;
  // String password;

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
                Navigator.of(ctx).popAndPushNamed(AddStudentScreen.routeName);
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
      if (_addStudentMode == AddStudentMode.grade) {
        const url = 'https://mrenglish.tk/api/v1/auth/nICNoValidation';

        final url1 =
            'https://mrenglish.tk/api/v1/classStudents/${_addStudentData['nICNo']}';

        final url3 = 'https://mrenglish.tk/api/v1/classStudents';

        Map<String, String> data = {
          'nICNo': _addStudentData['nICNo'],
        };
        String body = jsonEncode(data);

        Map<String, String> data1 = {
          "nICNo": _addStudentData['nICNo'],
          "className": _addStudentData['className'],
        };
        String body1 = jsonEncode(data1);

        var course = ' ';
        if (_addStudentData['className'] == 'A/L Class') {
          course = '60fc40f36f9bb458d36ac5b1';
        } else if (_addStudentData['className'] == 'Grade 7 Class') {
          course = '60fc40f36f9bb458d36ac5b2';
        } else if (_addStudentData['className'] == 'Grade 9 Class') {
          course = '60fc40f36f9bb458d36ac5b3';
        } else if (_addStudentData['className'] == 'Grade 10 Class') {
          course = '60fc40f36f9bb458d36ac5b4';
        } else if (_addStudentData['className'] == 'Grade 11 Class') {
          course = '60fc40f36f9bb458d36ac5b5';
        } else if (_addStudentData['className'] == 'O/L Paper Class') {
          course = '60fc40f36f9bb458d36ac5b6';
        } else if (_addStudentData['className'] == 'O/L Revision Class') {
          course = '60fc40f36f9bb458d36ac5b7';
        } else if (_addStudentData['className'] == 'Job Exam Class') {
          course = '61017d3f491783e913d3f2f6';
        } else if (_addStudentData['className'] == 'Grade 8 Class') {
          course = '6119dfe69f98e9649ec9ae8f';
        }

        var today = new DateTime.now();
        var activeClassStudent =
            today.add(new Duration(days: 30)).toString().substring(0, 10);

        Map<String, String> data3 = {
          "nICNo": _addStudentData['nICNo'],
          "className": _addStudentData['className'],
          "course": course,
          "activeClassStudent": activeClassStudent,
        };

        String body3 = jsonEncode(data3);

        try {
          final http.Response response = await http.post(
            Uri.parse(url),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
              'Charset': 'utf-8'
            },
            body: body,
          );

          final responseData = json.decode(response.body);
          if (!responseData['success']) {
            throw HttpException(
                'ඇතුළත් කළ අංකය හඳුනා ගත නොහැක. අංකය පරික්ෂා කර නැවත ඇතුළත් කරන්න.');
          }

          final response1 = await http.post(
            Uri.parse(url1),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: body1,
          );
          final response1Data = json.decode(response1.body);
          if (response1Data['success']) {
            final url2 =
                'https://mrenglish.tk/api/v1/classStudents/${response1Data['data'][0]['_id']}';
            final http.Response response2 = await http.delete(
              Uri.parse(url2),
              headers: <String, String>{
                'Content-Type': 'application/json; charset=UTF-8',
              },
            );

            final response2Data = json.decode(response2.body);
            if (!response2Data['success']) {
              throw HttpException(
                  'ඔබව මේ මොහොතේ හඳුනාගත නොහැක. පසුව උත්සහා කරන්න.');
            }

            final http.Response response3 = await http.post(
              Uri.parse(url3),
              headers: <String, String>{
                'Content-Type': 'application/json; charset=UTF-8',
              },
              body: body3,
            );

            final response3Data = json.decode(response3.body);
            if (!response3Data['success']) {
              throw HttpException(
                  'ඔබව මේ මොහොතේ හඳුනාගත නොහැක. පසුව උත්සහා කරන්න.');
            }
          } else if (!response1Data['success'] &&
              response1Data['error'] ==
                  'No review found with the id of ${_addStudentData['nICNo']} and ${_addStudentData['className']}') {
            final http.Response response3 = await http.post(
              Uri.parse(url3),
              headers: <String, String>{
                'Content-Type': 'application/json; charset=UTF-8',
              },
              body: body3,
            );

            final response3Data = json.decode(response3.body);
            if (!response3Data['success']) {
              throw HttpException(
                  'ඔබව මේ මොහොතේ හඳුනාගත නොහැක. පසුව උත්සහා කරන්න.');
            }
          }
        } on HttpException catch (error) {
          errorMessage = error.toString();
          _showErrorDialog(errorMessage);
        } catch (error) {
          var errorMessage = 'ඔබව මේ මොහොතේ හඳුනාගත නොහැක. පසුව උත්සහා කරන්න.';
          _showErrorDialog(errorMessage);
        }
      }
    } catch (error) {
      print(error);
      throw (error);
    }

    setState(() {
      _isLoading = false;
    });

    _switchAuthMode();
    if (_addStudentMode == AddStudentMode.Final && errorMessage == null) {
      Navigator.popAndPushNamed(context, '/');
    }
  }

  void _switchAuthMode() {
    if (_addStudentMode == AddStudentMode.nICNo) {
      setState(() {
        _addStudentMode = AddStudentMode.grade;
      });
    } else if (_addStudentMode == AddStudentMode.grade) {
      setState(() {
        _addStudentMode = AddStudentMode.Final;
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
              if (_addStudentMode == AddStudentMode.nICNo)
                Container(
                  child: Text(
                      'නිවැරිදි ජාතික හැදුනුම්පත් අංකය ඇතුලත් කරන්න. v අකුර capital හෝ simple ද කියලා හොදට check කරන්න.'),
                ),
              if (_addStudentMode == AddStudentMode.grade)
                Container(
                  child: Text(
                      'නිවැරිදිව වසර තෝරන්න. වසරවල් කිහිපයක් ඇත්නම් වරකට  බැගින් නැවත නැවත ඇතුලත් කරන්න.'),
                ),
              SizedBox(
                height: getProportionateScreenHeight(45),
              ),
              Form(
                  key: _formKey,
                  child: Column(children: [
                    if (_addStudentMode == AddStudentMode.nICNo)
                      buildNICNoFormField(),
                    SizedBox(
                      height: getProportionateScreenHeight(30),
                    ),
                    if (_addStudentMode == AddStudentMode.grade)
                      buildGradeFormField(),
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

  TextFormField buildNICNoFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (value) => {
        _addStudentData['nICNo'] = value,
        // _requestPin(value),
      },
      decoration: InputDecoration(
        labelText: 'NIC number',
        hintText: 'Enter NIC number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        if (value.isEmpty || value.length < 10) {
          return 'Input the NIC no';
        }
      },
    );
  }

  var _className = [
    "Grade 7 Class",
    "Grade 8 Class",
    "Grade 9 Class",
    "Grade 10 Class",
    "Grade 11 Class",
    "O/L Paper Class",
    "O/L Revision Class",
    "Job Exam Class",
    "A/L Class"
  ];

  FormField buildGradeFormField() {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return InputDecorator(
          decoration: InputDecoration(
              // labelStyle: textStyle,
              errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
              // hintText: 'Please select expense',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
          isEmpty: _addStudentData['className'] == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _addStudentData['className'] == ''
                  ? _addStudentData['className'] = _className[0]
                  : _addStudentData['className'],
              isDense: true,
              onChanged: (String newValue) {
                setState(() {
                  _addStudentData['className'] = newValue;
                  state.didChange(newValue);
                });
              },
              items: _className.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
