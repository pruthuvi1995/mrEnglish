import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:mr_english/providers/class.dart';

import './seminar.dart';

class Classes with ChangeNotifier {
  List<Class> _items = [];

  final String authToken;
  final String userId;

  Classes(this.authToken, this.userId, this._items);

  Future<void> fetchAndSetClasses(String title) async {
    const url1 = 'https://mrenglish.tk/api/v1/classes';
    final url2 = 'https://mrenglish.tk/api/v1/classDetails/$userId';

    try {
      final response1 = await http.get(
        Uri.parse(url1),
        headers: {HttpHeaders.authorizationHeader: "Bearer $authToken"},
      );
      final response2 = await http.get(
        Uri.parse(url2),
        headers: {HttpHeaders.authorizationHeader: "Bearer $authToken"},
      );

      final extractedData1 =
          json.decode(response1.body) as Map<String, dynamic>;
      final extractedData2 =
          json.decode(response2.body) as Map<String, dynamic>;
      final Data = extractedData1['data'] as List<dynamic>;
      final DataDetails = extractedData2['data'] as List<dynamic>;

      final List<Class> loadedClasses = [];
      Data.forEach((classData) {
        bool n = false;
        DataDetails.forEach((classDataDetails) {
          if (classData['title'] == classDataDetails['class']['title'] &&
              classData['className'] ==
                  classDataDetails['class']['className']) {
            n = true;
            bool isActive = false;
            var now = new DateTime.now();
            var parsedDate = DateTime.parse(classDataDetails['activeClass']);

            if (now.isBefore(parsedDate)) {
              isActive = true;
              print(isActive);
            }
            print(isActive);
            if (classDataDetails['class']['className'] == title) {
              loadedClasses.add(Class(
                id: classDataDetails['class']['_id'],
                classDetailsId: classDataDetails['_id'],
                title: classDataDetails['class']['title'],
                className: classDataDetails['class']['className'],
                videoURL: classDataDetails['class']['videoURL'],
                amount: classDataDetails['class']['amount'],
                isActive: isActive,
                authToken: authToken,
              ));
            }
          }
        });
        if (!n) {
          // bool isActive = false;
          // var now = new DateTime.now();
          // var parsedDate = DateTime.parse(
          //     yearData['_id'] == '5fbe66a26a8aeb05882966cc'
          //         ? '2050-12-01'
          //         : '2020-12-01');
          // if (now.isBefore(parsedDate)) {
          //   isActive = true;
          // }
          if (classData['className'] == title) {
            loadedClasses.add(Class(
              id: classData['_id'],
              title: classData['title'],
              className: classData['className'],
              videoURL: classData['videoURL'],
              amount: classData['amount'],
              authToken: authToken,
            ));
          }
        }
      });

      _items = loadedClasses;

      _items.sort((a, b) => a.title.compareTo(b.title));
      _items = _items.reversed.toList();

      notifyListeners();
    } catch (error) {
      print(error);
      throw (error);
    }
  }

  List<Class> get activeClasses {
    return _items.where((classItem) => classItem.isActive).toList();
  }

  List<Class> get items {
    return [..._items];
  }

  Class findByID(String id) {
    return _items.firstWhere((oneClass) => oneClass.id == id);
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
