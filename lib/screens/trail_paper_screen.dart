import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
import '../widgets/mcq_paper.dart';
import './day_lesson_screen.dart';

class TrailPaperScreen extends StatelessWidget {
  static const String routeName = '/trail-paper';

  @override
  Widget build(BuildContext context) {
    final dayId = ModalRoute.of(context).settings.arguments as List;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trail Paper',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(17),
          ),
        ),
      ),
      body: McqPaper(DayLessonScreen.routeName, 'trail', dayId),
    );
  }
}
