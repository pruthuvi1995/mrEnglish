import 'package:flutter/material.dart';

import '../size_config.dart';
import '../constants.dart';
import 'no_account_text.dart';
import './sign_form.dart';

class BodySignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                SizedBox(
                  height: getProportionateScreenWidth(25),
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProportionateScreenWidth(30),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(25)),
                Text(
                  'ඔබේ ජාතික හැඳුනුම්පත් අංකය හා password එක ඇතුළත් කර Login වන්න.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProportionateScreenWidth(15),
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(25)),
                SignForm(),
                SizedBox(height: getProportionateScreenWidth(25)),
                NoAccountText()
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
