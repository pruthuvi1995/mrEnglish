import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import './year.dart';

class Years with ChangeNotifier {
  List<Year> _items = [];

  final String authToken;
  final String userId;

  Years(this.authToken, this.userId, this._items);

  Future<void> fetchAndSetYears() async {
    const url1 = 'https://mrenglish.tk/api/v1/years';
    final url2 = 'https://mrenglish.tk/api/v1/yearDetails/$userId';

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

      final List<Year> loadedYears = [];
      Data.forEach((yearData) {
        bool n = false;
        DataDetails.forEach((yearDataDetails) {
          if (yearData['year'] == yearDataDetails['year']['year']) {
            n = true;
            bool isActive = false;
            var now = new DateTime.now();
            var parsedDate = DateTime.parse(yearDataDetails['activeYear']);

            if (now.isBefore(parsedDate)) {
              isActive = true;
            }
            loadedYears.add(Year(
              id: yearDataDetails['year']['_id'],
              yearDetailsId: yearDataDetails['_id'],
              year: yearDataDetails['year']['year'],
              amount: yearDataDetails['year']['amount'],
              isActive: isActive,
              authToken: authToken,
            ));
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

          loadedYears.add(Year(
            id: yearData['_id'],
            year: yearData['year'],
            amount: yearData['amount'],
            // isActive: isActive,
            authToken: authToken,
          ));
        }
      });

      _items = loadedYears;

      _items.sort((a, b) => a.year.compareTo(b.year));

      notifyListeners();
    } catch (error) {
      print(error);
      throw (error);
    }
  }

  List<Year> get activeYears {
    return _items.where((yearItem) => yearItem.isActive).toList();
  }

  List<Year> get items {
    return [..._items];
  }

  Year findByID(String id) {
    return _items.firstWhere((year) => year.id == id);
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
