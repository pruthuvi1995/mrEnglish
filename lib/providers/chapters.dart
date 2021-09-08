import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import './chapter.dart';

class Chapters with ChangeNotifier {
  List<Chapter> _items = [];

  final String authToken;
  final String userId;

  Chapters(this.authToken, this.userId, this._items);

  Future<void> fetchAndSetChapters() async {
    const url1 = 'https://mrenglish.tk/api/v1/chapters';
    final url2 = 'https://mrenglish.tk/api/v1/chapterDetails/$userId';

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

      final List<Chapter> loadedChapters = [];
      Data.forEach((chapterData) {
        bool n = false;
        DataDetails.forEach((chapterDataDetails) {
          if (chapterData['title'] == chapterDataDetails['chapter']['title']) {
            n = true;
            bool isActive = false;
            var now = new DateTime.now();
            var parsedDate =
                DateTime.parse(chapterDataDetails['activeChapter']);

            // print(seminarDataDetails['seminar']['title']);
            if (now.isBefore(parsedDate)) {
              isActive = true;
            }
            loadedChapters.add(Chapter(
              id: chapterDataDetails['chapter']['_id'],
              chapterDetailsId: chapterDataDetails['_id'],
              title: chapterDataDetails['chapter']['title'],
              chapterNo: chapterDataDetails['chapter']['chapterNo'],
              points: chapterDataDetails['chapter']['points'],
              videoList: chapterDataDetails['chapter']['videoList'],
              amount: chapterDataDetails['chapter']['amount'],
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

          loadedChapters.add(Chapter(
            id: chapterData['_id'],
            title: chapterData['title'],
            chapterNo: chapterData['chapterNo'],
            points: chapterData['points'],
            videoList: chapterData['videoList'],
            amount: chapterData['amount'],
            authToken: authToken,
          ));
        }
      });

      _items = loadedChapters;

      _items.sort((a, b) => a.chapterNo.compareTo(b.chapterNo));
      _items = _items.toList();

      notifyListeners();
    } catch (error) {
      print(error);
      throw (error);
    }
  }

  List<Chapter> get activeChapters {
    return _items.where((chapterItem) => chapterItem.isActive).toList();
  }

  List<Chapter> get items {
    return [..._items];
  }

  Chapter findByID(String id) {
    return _items.firstWhere((chapter) => chapter.id == id);
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
