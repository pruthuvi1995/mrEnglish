import './register_form.dart';

import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

class BodyRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                'Welcome',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'ඔබේ දත්ත ඇතුළත් කර register වන්න.',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: getProportionateScreenWidth(17),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              RegisterForm(),
              SizedBox(height: getProportionateScreenHeight(20)),
              // NoAccountText()
            ]),
          ),
        ),
      ),
    );
  }
}
