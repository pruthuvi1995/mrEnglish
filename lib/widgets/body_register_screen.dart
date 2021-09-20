import './register_form.dart';

import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

class BodyRegisterScreen extends StatelessWidget {
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
                Text(
                  'Welcome',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProportionateScreenWidth(30),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(25)),
                Text(
                  'ඔබේ දත්ත ඇතුළත් කර Register වන්න.',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProportionateScreenWidth(15),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getProportionateScreenWidth(25)),
                RegisterForm(),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
