import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import './day.dart';

class Days with ChangeNotifier {
  List<Day> _items = [];

  final String authToken;
  final String userId;

  Days(this.authToken, this.userId, this._items);

  Future<void> fetchAndSetDays() async {
    const url1 = 'https://mrenglish.tk/api/v1/days';
    final url2 = 'https://mrenglish.tk/api/v1/dayDetails/$userId';

    try {
      final response1 = await http.get(
        url1,
        headers: {HttpHeaders.authorizationHeader: "Bearer $authToken"},
      );
      final response2 = await http.get(
        url2,
        headers: {HttpHeaders.authorizationHeader: "Bearer $authToken"},
      );

      final extractedData1 =
          json.decode(response1.body) as Map<String, dynamic>;
      final extractedData2 =
          json.decode(response2.body) as Map<String, dynamic>;
      final Data = extractedData1['data'] as List<dynamic>;
      final DataDetails = extractedData2['data'] as List<dynamic>;

      final List<Day> loadedDays = [];
      Data.forEach((dayData) {
        bool n = false;
        DataDetails.forEach((dayDataDetails) {
          if (dayData['dayNo'] == dayDataDetails['day']['dayNo']) {
            n = true;
            bool isActive = false;
            var now = new DateTime.now();
            var parsedDate = DateTime.parse(dayDataDetails['activeDay']);

            if (now.isBefore(parsedDate)) {
              isActive = true;
            }

            loadedDays.add(Day(
              id: dayDataDetails['day']['_id'],
              dayDetailsId: dayDataDetails['_id'],
              dayNo: dayDataDetails['day']['dayNo'],
              amount: dayDataDetails['day']['amount'],
              noOfLessons: dayDataDetails['day']['noOfLessons'],
              // imageUrl: dayDataDetails['day']['photo'],
              dayPaperMark:
                  double.parse(dayDataDetails['dayPaperMark'].toString()),
              lesson1Mark:
                  double.parse(dayDataDetails['lesson1Mark'].toString()),
              lesson2Mark:
                  double.parse(dayDataDetails['lesson2Mark'].toString()),
              lesson3Mark:
                  double.parse(dayDataDetails['lesson3Mark'].toString()),
              totalMark: double.parse(dayDataDetails['totalMark'].toString()),
              isCompletedLesson1: dayDataDetails['isCompletedLesson1'],
              isCompletedLesson2: dayDataDetails['isCompletedLesson2'],
              isCompletedLesson3: dayDataDetails['isCompletedLesson3'],
              isCompletedDay: dayDataDetails['isCompletedDay'],
              isCompletedDayPaper: dayDataDetails['isCompletedDayPaper'],
              isActive: isActive,
              authToken: authToken,
            ));
          }
        });

        if (!n) {
          // bool isActive = false;
          // var now = new DateTime.now();
          // var parsedDate = DateTime.parse(
          //     dayData['_id'] == '5fbe669a6a8aeb05882966bd'
          //         ? '2050-12-01'
          //         : '2020-12-01');
          // if (now.isBefore(parsedDate)) {
          //   isActive = true;
          // }
          loadedDays.add(Day(
            id: dayData['_id'],
            dayNo: dayData['dayNo'],
            noOfLessons: dayData['noOfLessons'],
            amount: dayData['amount'],
            // imageUrl: dayData['photo'],
            // isActive: isActive,
            authToken: authToken,
          ));
        }
      });

      _items = loadedDays;

      _items.sort((a, b) => a.dayNo.compareTo(b.dayNo));
      _items.forEach((element) {
        print(element.dayDetailsId);
      });
      notifyListeners();
    } catch (error) {
      print(error);
      throw (error);
    }
  }

  List<Day> get activeDays {
    return _items.where((dayItem) => dayItem.isActive).toList();
  }

  List<Day> get completedDays {
    return _items.where((dayItem) => dayItem.isCompletedDay).toList();
  }

  List<Day> get items {
    return [..._items];
  }

  Day findByID(String id) {
    return _items.firstWhere((day) => day.id == id);
  }

  // Day findByDayIDAndUserID(String id) {
  //   return _items.firstWhere((day) => day.id == id);
  // }

  Day findByDetailsIdAndUpdateL1(String id, double mark, double totalMark) {
    Day findedDay = _items.firstWhere((day) => day.dayDetailsId == id);
    findedDay.lesson1Mark = mark;
    findedDay.isCompletedLesson1 = true;
    findedDay.totalMark = totalMark;
    notifyListeners();
  }

  Day findByDetailsIdAndUpdateL2(String id, double mark, double totalMark) {
    Day findedDay = _items.firstWhere((day) => day.dayDetailsId == id);
    findedDay.lesson2Mark = mark;
    findedDay.isCompletedLesson2 = true;
    findedDay.totalMark = totalMark;
    notifyListeners();
  }

  Day findByDetailsIdAndUpdateL3(String id, double mark, double totalMark) {
    Day findedDay = _items.firstWhere((day) => day.dayDetailsId == id);
    findedDay.lesson3Mark = mark;
    findedDay.isCompletedLesson3 = true;
    findedDay.totalMark = totalMark;
    notifyListeners();
  }

  Day findByDetailsIdAndUpdateCDay(String id) {
    Day findedDay = _items.firstWhere((day) => day.dayDetailsId == id);
    findedDay.isCompletedDay = true;

    notifyListeners();
  }

  Day findByDetailsIdAndUpdateADay(String id, bool isActive) {
    Day findedDay = _items.firstWhere((day) => day.dayDetailsId == id);
    findedDay.isActive = isActive;

    notifyListeners();
  }
}
