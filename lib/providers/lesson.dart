import 'package:flutter/foundation.dart';

class Lesson {
  final String id;
  final String title;
  final String dayId;
  final String description;
  final String lesson;
  final String imageUrl;
  final List mcqTrail;
  final List mcqLesson;
  final String videoURL;

  Lesson({
    @required this.id,
    @required this.title,
    @required this.dayId,
    @required this.description,
    @required this.lesson,
    @required this.imageUrl,
    @required this.mcqTrail,
    @required this.mcqLesson,
    @required this.videoURL,
  });
}
