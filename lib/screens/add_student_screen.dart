import 'package:mr_english/widgets/body_add_student_screen.dart';

import '../widgets/body_subscribe_screen.dart';

import '../constants.dart';
import '../size_config.dart';
import 'package:flutter/material.dart';

class AddStudentScreen extends StatelessWidget {
  static const routeName = '/add student';
  // final String navigation;
  // final bool isSubscribed;
  // final String token;

  // SubscribeScreen(this.navigation,this.isSubscribed,this.token);

  @override
  Widget build(BuildContext context) {
    // final details = ModalRoute.of(context).settings.arguments as List;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Student',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(17),
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: BodyAddStudentScreen(),
    );
  }
}
