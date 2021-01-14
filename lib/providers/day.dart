

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Day with ChangeNotifier {
  final String id;
  final String dayDetailsId;
  // final String userName;
  final int dayNo;
  // final String title;
  // final String imageUrl;
  final int noOfLessons;
  double dayPaperMark;
  double lesson1Mark;
  double lesson2Mark;
  double lesson3Mark;
  double totalMark;
  bool isCompletedLesson1;
  bool isCompletedLesson2;
  bool isCompletedLesson3;
  bool isCompletedDay;
  bool isCompletedDayPaper;
  bool isActive;
  final String authToken;
  final String amount;

  Day({
    @required this.id,
    this.dayDetailsId,
    @required this.amount,
    // @required this.userName,
    // @required this.title,
    @required this.dayNo,
    // @required this.imageUrl,
    this.noOfLessons = 0,
    this.dayPaperMark = 0,
    this.lesson1Mark = 0,
    this.lesson2Mark = 0,
    this.lesson3Mark = 0,
    this.totalMark = 0,
    this.isCompletedLesson1 = false,
    this.isCompletedLesson2 = false,
    this.isCompletedLesson3 = false,
    this.isCompletedDay = false,
    this.isCompletedDayPaper = false,
    this.isActive = false,
    @required this.authToken,
  });
}
