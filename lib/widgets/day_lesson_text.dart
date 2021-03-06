import 'package:flutter/material.dart';
import 'package:mr_english/widgets/day01Lesson01.dart';

import 'day01Lesson02.dart';
import 'day02Lesson01.dart';

class DayLessonText extends StatelessWidget {
  final String lesson;
  DayLessonText(this.lesson);

  @override
  Widget build(BuildContext context) {
    print(lesson);
    if (lesson == 'day01Lesson01')
      return Day01Lesson01();
    else if (lesson == 'day01Lesson02')
      return Day01Lesson02();
    else if (lesson == 'day02Lesson01') return Day02Lesson01();
  }
}
