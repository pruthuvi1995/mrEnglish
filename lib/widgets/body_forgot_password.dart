import './default_button.dart';
import './form_error.dart';
import './no_account_text.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class BodyForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'obe Account ekata newatha athulath weemata awshaya pin no 1 genwaa ganimata Obe durakathana ankaya laba denna.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String nICNo;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        TextFormField(
          keyboardType: TextInputType.name,
          onSaved: (value) => nICNo = value,
          onChanged: (value) {
            if (value.isNotEmpty && errors.contains(kNICNoNullError)) {
              setState(() => {errors.remove(kNICNoNullError)});
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Mobile phone number',
            hintText: 'Enter your Mobile phone number',
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
          validator: (value) {
            if (value.isEmpty && !errors.contains(kNICNoNullError)) {
              setState(() => {errors.add(kNICNoNullError)});
            }
            return null;
          },
        ),
        SizedBox(height: getProportionateScreenWidth(30)),
        FormError(
          errors: errors,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.1),
        DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState.validate()) {
                //mekata wenn ona de liynan
              }
            }),
        SizedBox(height: SizeConfig.screenHeight * 0.1),
        NoAccountText(),
      ]),
    );
  }
}
