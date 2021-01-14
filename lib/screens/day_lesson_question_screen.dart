import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
import '../widgets/mcq_paper.dart';
import './day_details_screen.dart';

class DayLessonQuestionScreen extends StatelessWidget {
  static const routeName = '/day-lesson-question';

  @override
  Widget build(BuildContext context) {
    final dayId = ModalRoute.of(context).settings.arguments as List;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Test about the lesson',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(17),
          ),
        ),
      ),
      body: McqPaper(DayDetailsScreen.routeName, 'lesson', dayId),
    );
  }
}
