import 'dart:convert';

import 'dart:io';

import './lesson.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Lessons with ChangeNotifier {
  List<Lesson> _items = [];

  final String authToken;

  Lessons(this.authToken, this._items);

  Future<void> fetchAndSetLessons() async {
    final url = 'https://mrenglish.tk/api/v1/lessons';

    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {HttpHeaders.authorizationHeader: "Bearer $authToken"},
      );

      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final Data = extractedData['data'] as List<dynamic>;

      final List<Lesson> loadedLessons = [];

      Data.forEach((lessonData) {
        // print(lessonData);
        loadedLessons.add(Lesson(
            id: lessonData['_id'],
            title: lessonData['title'],
            description: lessonData['description'],
            lesson: lessonData['lesson'],
            dayId: lessonData['day']['_id'],
            lessonNo: lessonData['imageURL'],
            mcqTrail: lessonData['mcqTrail'],
            mcqLesson: lessonData['mcqLesson'],
            videoURL: lessonData['videoURL']));
      });

      _items = loadedLessons;
      _items.sort((a, b) => a.lessonNo.compareTo(b.lessonNo));
      // print(_items);
      notifyListeners();
    } catch (error) {
      print(error);
      throw (error);
    }
  }

  Future<void> updateCompleteMarkLesson1(
      String id, double totalMark, double mark) async {}

  List<Lesson> get items {
    return [..._items];
  }

  Lesson findByID(String id) {
    return _items.firstWhere((lesson) => lesson.id == id);
  }

  List<Lesson> findByDayID(String id) {
    final List<Lesson> selectedLessons = [];
    _items.forEach((element) {
      if (element.dayId == id) {
        selectedLessons.add(element);
      }
    });
    return selectedLessons;
  }

  // List<String> findByDayIDGetTitle(String id) {
  //   final List<String> selectedLessons = [];
  //   _items.forEach((element) {
  //     if (element.dayId == id) {
  //       selectedLessons.add(element.title);
  //     }
  //   });
  //   return selectedLessons;
  // }
}
