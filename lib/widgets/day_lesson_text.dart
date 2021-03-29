import 'package:flutter/material.dart';
import 'package:mr_english/widgets/day01Lesson01.dart';

import 'day01Lesson02.dart';
import 'day02Lesson01.dart';
import 'day03Lesson01.dart';
import 'day04Lesson01.dart';
import 'day04Lesson02.dart';
import 'day05Lesson01.dart';
import 'day06Lesson01.dart';
import 'day06Lesson02.dart';
import 'day07Lesson01.dart';
import 'day07Lesson02.dart';
import 'day08Lesson01.dart';
import 'day09Lesson01.dart';
import 'day09Lesson02.dart';
import 'day10Lesson01.dart';
import 'day11Lesson01.dart';
import 'day12Lesson1.dart';
import 'day13Lesson01.dart';
import 'day14Lesson01.dart';
import 'day15Lesson01.dart';

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
    else if (lesson == 'day02Lesson01')
      return Day02Lesson01();
    else if (lesson == 'day03Lesson01')
      return Day03Lesson01();
    else if (lesson == 'day04Lesson01')
      return Day04Lesson01();
    else if (lesson == 'day04Lesson02')
      return Day04Lesson02();
    else if (lesson == 'day05Lesson01')
      return Day05Lesson01();
    else if (lesson == 'day06Lesson01')
      return Day06Lesson01();
    else if (lesson == 'day06Lesson02')
      return Day06Lesson02();
    else if (lesson == 'day07Lesson01')
      return Day07Lesson01();
    else if (lesson == 'day07Lesson02')
      return Day07Lesson02();
    else if (lesson == 'day08Lesson01')
      return Day08Lesson01();
    else if (lesson == 'day09Lesson01')
      return Day09Lesson01();
    else if (lesson == 'day09Lesson02')
      return Day09Lesson02();
    else if (lesson == 'day10Lesson01')
      return Day10Lesson01();
    else if (lesson == 'day11Lesson01')
      return Day11Lesson01();
    else if (lesson == 'day12Lesson01')
      return Day12Lesson01();
    else if (lesson == 'day13Lesson01')
      return Day13Lesson01();
    else if (lesson == 'day14Lesson01')
      return Day14Lesson01();
    else if (lesson == 'day15Lesson01') return Day15Lesson01();
  }
}
