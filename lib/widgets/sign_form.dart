import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../size_config.dart';
import 'default_button.dart';
import 'form_error.dart';
import '../models/http_exception.dart';
import '../providers/auth.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  Map<String, String> _loginData = {
    "nICNo": "",
    "password": "",
  };

  var _isLoading = false;

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
              },
              child: Text(
                'OK',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(15),
                ),
              ))
        ],
      ),
    );
  }

  Future<void> _submit() async {
    var errorMessage;
    if (!_formKey.currentState.validate()) {
      // Invalid!
      return;
    }
    _formKey.currentState.save();
    setState(() {
      _isLoading = true;
    });

    try {
      // Log user in
      await Provider.of<Auth>(context, listen: false)
          .login(_loginData['nICNo'], _loginData['password']);
    } on HttpException catch (error) {
      if (error.toString().contains('Invalid credentials')) {
        errorMessage =
            'ඔබ ලබා දුන් දත්ත වැරදියි. නිවැරිදි දත්ත ඇතුළත් කර නැවත log වන්න.';
      } else {
        errorMessage = 'Login වීම අසාර්ථකයි.';
      }
      _showErrorDialog(errorMessage);
    } catch (error) {
      var errorMessage = 'ඔබව මේ මොහොතේ හඳුනාගත නොහැක. පසුව උත්සහා කරන්න.';
      _showErrorDialog(errorMessage);
    }

    setState(() {
      _isLoading = false;
    });

    // if (errorMessage == null)
    // Navigator.Named(context, SignInScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: <Widget>[
          buildNICNoFormField(),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          FormError(errors: errors),
          if (_isLoading)
            CircularProgressIndicator()
          else
            DefaultButton(
              text: 'Login',
              press: () => {_submit()},
            )
        ]));
  }

  TextFormField buildNICNoFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (value) => _loginData['nICNo'] = value,
      decoration: InputDecoration(
        labelText: 'NIC no ( ජාතික හැඳුනුම්පත් අංකය )',
        hintText: 'Enter the NIC no',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        if (value.isEmpty || value.length < 10) {
          return 'Input the coreect NIC no';
        }
      },
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value.isEmpty || value.length < 8) {
          return 'Password is too short';
        }
      },
      onSaved: (value) => _loginData['password'] = value,
      decoration: InputDecoration(
        labelText: 'password',
        hintText: 'Enter the password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
