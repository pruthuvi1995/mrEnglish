import '../constants.dart';
import '../size_config.dart';
import '../widgets/body_select_course.dart';
import 'package:flutter/material.dart';

class SelectCourseScreen extends StatelessWidget {
  static const routeName = '/select_course';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          'Select the course',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(17),
          ),
        ),
      ),
      body: BodySelectCourse(),
    );
  }
}
