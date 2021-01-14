import 'package:flutter/foundation.dart';

class Mcq {
  final String type;
  final String qText;
  final List answers;
  final String correctAnswer;
  String givenAnswer;
  double mark;

  Mcq(
      {@required this.type,
      @required this.qText,
      @required this.answers,
      @required this.correctAnswer,
      this.givenAnswer = '',
      this.mark = 0});
}
