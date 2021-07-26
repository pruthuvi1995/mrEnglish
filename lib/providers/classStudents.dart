import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import './classStudent.dart';
import 'auth.dart';

class ClassStudents with ChangeNotifier {
  List<ClassStudent> _items = [];

  final String authToken;
  final String userId;
  final String nICNo;

  ClassStudents(this.authToken, this.userId, this._items, this.nICNo);

  Future<void> fetchAndSetClassStudents() async {
    final url1 = 'https://mrenglish.tk/api/v1/classStudents/$nICNo';

    try {
      final response1 = await http.get(
        Uri.parse(url1),
        headers: {HttpHeaders.authorizationHeader: "Bearer $authToken"},
      );

      final extractedData1 =
          json.decode(response1.body) as Map<String, dynamic>;

      final Data = extractedData1['data'] as List<dynamic>;

      final List<ClassStudent> loadedClassStudents = [];
      Data.forEach((classStudentData) {
        var now = new DateTime.now();
        var parsedDate = DateTime.parse(classStudentData['activeClassStudent']);

        if (now.isBefore(parsedDate)) {
          loadedClassStudents.add(ClassStudent(
            id: classStudentData['_id'],
            nICNo: classStudentData['nICNo'],
            className: classStudentData['className'],
            title: classStudentData['course']['title'],
            description: classStudentData['course']['description'],
            isActive: true,
            authToken: authToken,
          ));
        }
      });

      _items = loadedClassStudents;

      _items.sort((a, b) => a.className.compareTo(b.className));

      notifyListeners();
    } catch (error) {
      print(error);
      throw (error);
    }
  }

  List<ClassStudent> get items {
    return [..._items];
  }

  // Year findByDetailsIdAndUpdateL1(String id, double mark, double totalMark) {
  //   Day findedDay = _items.firstWhere((day) => day.dayDetailsId == id);
  //   findedDay.lesson1Mark = mark;
  //   findedDay.isCompletedLesson1 = true;
  //   findedDay.totalMark = totalMark;
  //   notifyListeners();
  // }

  // Day findByDetailsIdAndUpdateL2(String id, double mark, double totalMark) {
  //   Day findedDay = _items.firstWhere((day) => day.dayDetailsId == id);
  //   findedDay.lesson2Mark = mark;
  //   findedDay.isCompletedLesson2 = true;
  //   findedDay.totalMark = totalMark;
  //   notifyListeners();
  // }

  // Day findByDetailsIdAndUpdateL3(String id, double mark, double totalMark) {
  //   Day findedDay = _items.firstWhere((day) => day.dayDetailsId == id);
  //   findedDay.lesson3Mark = mark;
  //   findedDay.isCompletedLesson3 = true;
  //   findedDay.totalMark = totalMark;
  //   notifyListeners();
  // }

  // Day findByDetailsIdAndUpdateCDay(String id) {
  //   Day findedDay = _items.firstWhere((day) => day.dayDetailsId == id);
  //   findedDay.isCompletedDay = true;

  //   notifyListeners();
  // }
}
