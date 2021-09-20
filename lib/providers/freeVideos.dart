import 'dart:convert';

import 'dart:io';

import './freeVideo.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class FreeVideos with ChangeNotifier {
  // List<FreeVideo> _items = [];

  final String authToken;
  List imageList = [];
  List playList = [];

  FreeVideos(this.authToken);

  Future<void> fetchAndSetVideos() async {
    final url = 'https://mrenglish.tk/api/v1/freeVideos';

    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {HttpHeaders.authorizationHeader: "Bearer $authToken"},
      );

      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final data = extractedData['data'] as List<dynamic>;

      imageList = data[0]['imageList'];
      playList = data[0]['playList'];

      notifyListeners();
    } catch (error) {
      print(error);
      throw (error);
    }
  }
}
