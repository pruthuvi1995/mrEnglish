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
import 'day12Lesson01.dart';
import 'day13Lesson01.dart';
import 'day14Lesson01.dart';
import 'day15Lesson01.dart';
import 'day16Lesson01.dart';
import 'day16Lesson02.dart';
import 'day17Lesson01.dart';
import 'day17Lesson02.dart';
import 'day18Lesson01.dart';
import 'day18Lesson02.dart';
import 'day19Lesson01.dart';
import 'day20Lesson01.dart';
import 'day20Lesson02.dart';
import 'day21Lesson01.dart';
import 'day22Lesson01.dart';

import 'day23Lesson01.dart';
import 'day24Lesson01.dart';
import 'day25Lesson01.dart';
import 'day25Lesson02.dart';
import 'day26Lesson01.dart';
import 'day27Lesson01.dart';
import 'day28Lesson01.dart';
import 'day29Lesson01.dart';
import 'day29Lesson02.dart';
import 'day30Lesson01.dart';
import 'day31Lesson01.dart';
import 'day31Lesson02.dart';
import 'day32Lesson01.dart';
import 'day32Lesson02.dart';
import 'day33Lesson01.dart';
import 'day34Lesson01.dart';
import 'day35Lesson01.dart';
import 'day36Lesson01.dart';
import 'day37Lesson01.dart';
import 'day37Lesson02.dart';
import 'day38Lesson01.dart';
import 'day38Lesson02.dart';
import 'day39Lesson01.dart';
import 'day40Lesson01.dart';

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
    else if (lesson == 'day15Lesson01')
      return Day15Lesson01();
    else if (lesson == 'day16Lesson01')
      return Day16Lesson01();
    else if (lesson == 'day16Lesson02')
      return Day16Lesson02();
    else if (lesson == 'day17Lesson01')
      return Day17Lesson01();
    else if (lesson == 'day17Lesson02')
      return Day17Lesson02();
    else if (lesson == 'day18Lesson01')
      return Day18Lesson01();
    else if (lesson == 'day18Lesson02')
      return Day18Lesson02();
    else if (lesson == 'day19Lesson01')
      return Day19Lesson01();
    else if (lesson == 'day20Lesson01')
      return Day20Lesson01();
    else if (lesson == 'day20Lesson02')
      return Day20Lesson02();
    else if (lesson == 'day21Lesson01')
      return Day21Lesson01();
    else if (lesson == 'day22Lesson01')
      return Day22Lesson01();
    else if (lesson == 'day23Lesson01')
      return Day23Lesson01();
    else if (lesson == 'day24Lesson01')
      return Day24Lesson01();
    else if (lesson == 'day25Lesson01')
      return Day25Lesson01();
    else if (lesson == 'day25Lesson02')
      return Day25Lesson02();
    else if (lesson == 'day26Lesson01')
      return Day26Lesson01();
    else if (lesson == 'day27Lesson01')
      return Day27Lesson01();
    else if (lesson == 'day28Lesson01')
      return Day28Lesson01();
    else if (lesson == 'day29Lesson01')
      return Day29Lesson01();
    else if (lesson == 'day29Lesson02')
      return Day29Lesson02();
    else if (lesson == 'day30Lesson01')
      return Day30Lesson01();
    else if (lesson == 'day31Lesson01')
      return Day31Lesson01();
    else if (lesson == 'day31Lesson02')
      return Day31Lesson02();
    else if (lesson == 'day32Lesson01')
      return Day32Lesson01();
    else if (lesson == 'day32Lesson02')
      return Day32Lesson02();
    else if (lesson == 'day33Lesson01')
      return Day33Lesson01();
    else if (lesson == 'day34Lesson01')
      return Day34Lesson01();
    else if (lesson == 'day35Lesson01')
      return Day35Lesson01();
    else if (lesson == 'day36Lesson01')
      return Day36Lesson01();
    else if (lesson == 'day37Lesson01')
      return Day37Lesson01();
    else if (lesson == 'day37Lesson02')
      return Day37Lesson02();
    else if (lesson == 'day38Lesson01')
      return Day38Lesson01();
    else if (lesson == 'day38Lesson02')
      return Day38Lesson02();
    else if (lesson == 'day39Lesson01')
      return Day39Lesson01();
    else if (lesson == 'day40Lesson01') return Day40Lesson01();
  }
}
