import 'package:flutter/foundation.dart';

class Mcq {
  final String type;
  final String qText;
  final List answers;
  final String correctAnswer;
  final String review;
  String givenAnswer;
  double mark;

  Mcq(
      {@required this.type,
      @required this.qText,
      @required this.answers,
      @required this.correctAnswer,
      @required this.review,
      this.givenAnswer = '',
      this.mark = 0});
}
