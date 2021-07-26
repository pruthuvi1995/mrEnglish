import './subscribe_form.dart';

import './register_form.dart';

import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';
import 'add_student_form.dart';

class BodyAddStudentScreen extends StatelessWidget {
  // final List details;
  // BodySubscribeScreen(this.details);

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
                'Add Student',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight * 0.08),
              // SizedBox(height: SizeConfig.screenHeight * 0.08),
              AddStudentForm(),
              SizedBox(height: getProportionateScreenHeight(20)),
              // NoAccountText()
            ]),
          ),
        ),
      ),
    );
  }
}
