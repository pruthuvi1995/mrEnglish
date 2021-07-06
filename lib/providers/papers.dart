import 'dart:convert';

import 'dart:io';

import './paper.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Papers with ChangeNotifier {
  List<Paper> _items = [];

  final String authToken;

  Papers(this.authToken, this._items);

  Future<void> fetchAndSetPapers() async {
    final url = 'https://mrenglish.tk/api/v1/papers';
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {HttpHeaders.authorizationHeader: "Bearer $authToken"},
      );

      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final PaperData = extractedData['data'] as List<dynamic>;

      final List<Paper> loadedPapers = [];

      PaperData.forEach((paperData) {
        loadedPapers.add(Paper(
          id: paperData['_id'],
          title: paperData['title'],
          yearId: paperData['year']['_id'],
          question01: paperData['question01'],
          question02: paperData['question02'],
          question03: paperData['question03'],
          question04: paperData['question04'],
          question05: paperData['question05'],
          question06: paperData['question06'],
          question07: paperData['question07'],
          question08: paperData['question08'],
          question09: paperData['question09'],
          question10: paperData['question10'],
          question11: paperData['question11'],
          question12: paperData['question12'],
          question13: paperData['question13'],
          question14: paperData['question14'],
          question15: paperData['question15'],
          question16: paperData['question16'],
          descriptionQ01: paperData['descriptionQ01'],
          descriptionQ02: paperData['descriptionQ02'],
          descriptionQ03: paperData['descriptionQ03'],
          descriptionQ04: paperData['descriptionQ04'],
          descriptionQ05: paperData['descriptionQ05'],
          descriptionQ06: paperData['descriptionQ06'],
          descriptionQ07: paperData['descriptionQ07'],
          descriptionQ08: paperData['descriptionQ08'],
          descriptionQ09: paperData['descriptionQ09'],
          descriptionQ10: paperData['descriptionQ10'],
          descriptionQ11: paperData['descriptionQ11'],
          descriptionQ12: paperData['descriptionQ12'],
          descriptionQ13: paperData['descriptionQ13'],
          descriptionQ14: paperData['descriptionQ14'],
          descriptionQ15: paperData['descriptionQ15'],
          descriptionQ16: paperData['descriptionQ16'],
        ));
      });

      _items = loadedPapers;

      notifyListeners();
    } catch (error) {
      print(error);
      throw (error);
    }
  }

  List<Paper> get items {
    return [..._items];
  }

  Paper findByID(String id) {
    return _items.firstWhere((paper) => paper.yearId == id);
  }

  // dynamic findByYearID(String id) {
  //   if(_items[0].yearId==id){
  //     return
  //   }
  //   // return _items.firstWhere((paper) => paper.yearId == id);
  // }
}
