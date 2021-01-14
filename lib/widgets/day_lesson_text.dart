import 'package:flutter/material.dart';
import 'package:mr_english/widgets/day01Part01.dart';

class DayLessonText extends StatelessWidget {
  final String lesson;
  DayLessonText(this.lesson);
  @override
  Widget build(BuildContext context) {
    if (lesson == 'day01Part01') return Day01Part01();
  }
}
