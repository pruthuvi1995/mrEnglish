import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import './course.dart';

class Courses with ChangeNotifier {
  List<Course> _items = [];

  final String authToken;

  Courses(this.authToken, this._items);

  Future<void> fetchAndSetCourses() async {
    const url = 'https://mrenglish.tk/api/v1/courses';

    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {HttpHeaders.authorizationHeader: "Bearer $authToken"},
      );

      final extractedData = json.decode(response.body) as Map<String, dynamic>;

      final Data = extractedData['data'] as List<dynamic>;

      final List<Course> loadedCourses = [];

      Data.forEach((data) {
        loadedCourses.add(Course(
          title: data['title'],
          description: data['description'],
        ));
      });

      _items = loadedCourses;

      notifyListeners();
    } catch (error) {
      print(error);
      throw (error);
    }
  }

  List<Course> get items {
    return [..._items];
  }
}
