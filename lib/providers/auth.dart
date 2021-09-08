import 'dart:convert';
import 'dart:async';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/http_exception.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String userId;
  bool isSubscribed;
  String phoneNo;
  String firstName;
  String lastName;
  String nicNo;
  double mark;
  int noOfFinishedLessons;
  Timer _authTimer;
  String serviceProvider;

  bool get isAuth {
    return token != null;
  }

  String get token {
    if (_expiryDate != null &&
        _token != null &&
        _expiryDate.isAfter(DateTime.now())) {
      return _token;
    }
    return null;
  }

  Future<void> signup(String firstName, String lastName, String nICNo,
      String password, String phoneNo) async {
    const url = 'https://mrenglish.tk/api/v1/auth/register';
    Map<String, String> data = {
      "firstName": firstName,
      "lastName": lastName,
      "NICNo": nICNo,
      "password": password,
      "phoneNo": phoneNo
    };

    String body = jsonEncode(data);

    try {
      final http.Response response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: body,
      );

      final responseData = json.decode(response.body);
      if (!responseData['success']) {
        throw HttpException(responseData['error']);
      }
      _token = responseData['token'];

      _expiryDate = DateTime.parse(responseData['options']['expires']);
      userId = responseData['user']['_id'];
      isSubscribed = responseData['user']['isSubscribed'];
      phoneNo = responseData['user']['phoneNo'];
      firstName = responseData['user']['firstName'];
      lastName = responseData['user']['lastName'];
      nicNo = responseData['user']['NICNo'];
      mark = double.parse(responseData['user']['mark'].toString());
      noOfFinishedLessons = responseData['user']['noOfFinishedLessons'];
      serviceProvider = responseData['user']['serviceProvider'];
      _autoLogout();
      notifyListeners();
      final prefs = await SharedPreferences.getInstance();
      final userData = json.encode(
        {
          'token': _token,
          'userId': userId,
          'expiryDate': _expiryDate.toIso8601String(),
          'isSubscribed': isSubscribed,
          'phoneNo': phoneNo,
          'firstName': firstName,
          'lastName': lastName,
          'nicNo': nicNo,
          'mark': mark,
          'noOfFinishedLessons': noOfFinishedLessons,
          'serviceProvider': serviceProvider,
        },
      );
      prefs.setString('userData', userData);
    } catch (error) {
      throw error;
    }
  }

  Future<void> login(String nICNo, String password) async {
    const url = 'https://mrenglish.tk/api/v1/auth/login';
    const url1 = 'https://mrenglish.tk/api/v1/dayDetails/getSubs';
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          {
            'NICNo': nICNo,
            'password': password,
          },
        ),
      );

      final responseData = json.decode(response.body);

      if (!responseData['success']) {
        throw HttpException(responseData['error']);
      }
      _token = responseData['token'];
      _expiryDate = DateTime.parse(responseData['options']['expires']);
      userId = responseData['user']['_id'];
      phoneNo = responseData['user']['phoneNo'];
      firstName = responseData['user']['firstName'];
      lastName = responseData['user']['lastName'];
      nicNo = responseData['user']['NICNo'];
      mark = double.parse(responseData['user']['mark'].toString());
      noOfFinishedLessons = responseData['user']['noOfFinishedLessons'];
      serviceProvider = responseData['user']['serviceProvider'];

      if (serviceProvider == "Dialog" || serviceProvider == "Mobitel") {
        final response1 = await http.post(
          Uri.parse(url1),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(
            {
              'phoneNo': phoneNo,
              'serviceProvider': serviceProvider,
            },
          ),
        );

        final response1Data = json.decode(response1.body);
        final data = response1Data['data']['subscriptionStatus'];

        if (data == 'REGISTERED') {
          isSubscribed = true;
        } else {
          isSubscribed = false;
        }
      } else if (serviceProvider == " ") {
        isSubscribed = false;
      } else {
        isSubscribed = true;
      }

      _autoLogout();
      notifyListeners();
      final prefs = await SharedPreferences.getInstance();
      final userData = json.encode(
        {
          'token': _token,
          'userId': userId,
          'expiryDate': _expiryDate.toIso8601String(),
          'isSubscribed': isSubscribed,
          'phoneNo': phoneNo,
          'firstName': firstName,
          'lastName': lastName,
          'nicNo': nicNo,
          'mark': mark,
          'noOfFinishedLessons': noOfFinishedLessons,
          'serviceProvider': serviceProvider,
        },
      );
      prefs.setString('userData', userData);
    } catch (error) {
      print(error);
      throw error;
    }
  }

  Future<bool> tryAutoLogin() async {
    const url1 = 'https://mrenglish.tk/api/v1/dayDetails/getSubs';
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('userData')) {
      return false;
    }
    final extractedUserData =
        json.decode(prefs.getString('userData')) as Map<String, Object>;

    final expiryDate = DateTime.parse(extractedUserData['expiryDate']);

    if (expiryDate.isBefore(DateTime.now())) {
      return false;
    }

    _token = extractedUserData['token'];
    userId = extractedUserData['userId'];

    _expiryDate = expiryDate;
    phoneNo = extractedUserData['phoneNo'];
    firstName = extractedUserData['firstName'];
    lastName = extractedUserData['lastName'];
    nicNo = extractedUserData['nicNo'];
    mark = extractedUserData['mark'];
    noOfFinishedLessons = extractedUserData['noOfFinishedLessons'];
    serviceProvider = extractedUserData['serviceProvider'];

    if (serviceProvider == "Dialog" || serviceProvider == "Mobitel") {
      final response1 = await http.post(
        Uri.parse(url1),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          {
            'phoneNo': phoneNo,
            'serviceProvider': serviceProvider,
          },
        ),
      );

      final response1Data = json.decode(response1.body);
      final data = response1Data['data']['subscriptionStatus'];

      if (data == 'REGISTERED') {
        isSubscribed = true;
      } else {
        isSubscribed = false;
      }
    } else if (serviceProvider == " ") {
      isSubscribed = false;
    } else {
      isSubscribed = true;
    }

    notifyListeners();
    _autoLogout();
    return true;
  }

  Future<void> logout() async {
    _token = null;
    userId = null;
    _expiryDate = null;
    if (_authTimer != null) {
      _authTimer.cancel();
      _authTimer = null;
    }
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  void _autoLogout() {
    if (_authTimer != null) {
      _authTimer.cancel();
    }
    final timeToExpiry = _expiryDate.difference(DateTime.now()).inSeconds;
    _authTimer = Timer(Duration(seconds: timeToExpiry), logout);
  }

  Future<void> updatePhoneNumber(
      String phoneNoNew, String serviceProvider) async {
    const url1 = 'https://mrenglish.tk/api/v1/dayDetails/getSubs';
    isSubscribed = !isSubscribed;
    final prefs = await SharedPreferences.getInstance();

    var extractedUserData =
        json.decode(prefs.getString('userData')) as Map<String, Object>;

    extractedUserData['phoneNo'] = phoneNoNew;
    extractedUserData['isSubscribed'] = isSubscribed;
    extractedUserData['serviceProvider'] = serviceProvider;

    print('ccccccccccccccc');
    print(phoneNoNew);

    if (serviceProvider == "Dialog" || serviceProvider == "Mobitel") {
      final response1 = await http.post(
        Uri.parse(url1),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          {
            'phoneNo': phoneNoNew,
            'serviceProvider': serviceProvider,
          },
        ),
      );

      final response1Data = json.decode(response1.body);
      final data = response1Data['data']['subscriptionStatus'];

      if (data == 'REGISTERED') {
        isSubscribed = true;
      } else {
        isSubscribed = false;
      }
    } else if (serviceProvider == " ") {
      isSubscribed = false;
    } else {
      isSubscribed = true;
    }

    final userData = json.encode(
      {
        'token': extractedUserData['token'],
        'userId': extractedUserData['userId'],
        'expiryDate': extractedUserData['expiryDate'],
        'isSubscribed': isSubscribed,
        'phoneNo': extractedUserData['phoneNo'],
        'firstName': extractedUserData['firstName'],
        'lastName': extractedUserData['lastName'],
        'nicNo': extractedUserData['nicNo'],
        'mark': extractedUserData['mark'],
        'noOfFinishedLessons': extractedUserData['noOfFinishedLessons'],
        'serviceProvider': extractedUserData['serviceProvider'],
      },
    );
    prefs.setString('userData', userData);
    phoneNo = extractedUserData['phoneNo'];
    notifyListeners();
  }

  // Future<void> updateSubscription() async {
  //   isSubscribed = !isSubscribed;
  //   final prefs = await SharedPreferences.getInstance();

  //   var extractedUserData =
  //       json.decode(prefs.getString('userData')) as Map<String, Object>;

  //   final userData = json.encode(
  //     {
  //       'token': extractedUserData['token'],
  //       'userId': extractedUserData['userId'],
  //       'expiryDate': extractedUserData['expiryDate'],
  //       'isSubscribed': extractedUserData['isSubscribed'],
  //       'phoneNo': extractedUserData['phoneNo'],
  //       'firstName': extractedUserData['firstName'],
  //       'lastName': extractedUserData['lastName'],
  //       'nicNo': extractedUserData['nicNo'],
  //       'mark': extractedUserData['mark'],
  //       'noOfFinishedLessons': extractedUserData['noOfFinishedLessons'],
  //     },
  //   );
  //   prefs.setString('userData', userData);

  //   notifyListeners();
  // }

  Future<void> updateMark(double mark) async {
    mark = mark * 2;
    const url1 = 'https://mrenglish.tk/api/v1/dayDetails/getSubs';
    final prefs = await SharedPreferences.getInstance();

    var extractedUserData =
        json.decode(prefs.getString('userData')) as Map<String, Object>;

    extractedUserData['mark'] = mark;
    if (extractedUserData['serviceProvider'] != "Dialog" ||
        extractedUserData['serviceProvider'] != "Mobitel") {
      final response1 = await http.post(
        Uri.parse(url1),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          {
            'phoneNo': extractedUserData['phoneNo'],
            'serviceProvider': extractedUserData['serviceProvider'],
          },
        ),
      );

      final response1Data = json.decode(response1.body);
      final data = response1Data['data']['subscriptionStatus'];

      if (data == 'REGISTERED') {
        isSubscribed = true;
      } else {
        isSubscribed = false;
      }
    } else if (extractedUserData['serviceProvider'] == " ") {
      isSubscribed = false;
    } else {
      isSubscribed = true;
    }

    final userData = json.encode(
      {
        'token': extractedUserData['token'],
        'userId': extractedUserData['userId'],
        'expiryDate': extractedUserData['expiryDate'],
        'isSubscribed': isSubscribed,
        'phoneNo': extractedUserData['phoneNo'],
        'firstName': extractedUserData['firstName'],
        'lastName': extractedUserData['lastName'],
        'nicNo': extractedUserData['nicNo'],
        'mark': extractedUserData['mark'],
        'noOfFinishedLessons': extractedUserData['noOfFinishedLessons'],
        'serviceProvider': extractedUserData['serviceProvider'],
      },
    );
    prefs.setString('userData', userData);

    notifyListeners();
  }

  Future<void> getMe() async {
    const url1 = 'https://mrenglish.tk/api/v1/dayDetails/getSubs';
    final prefs = await SharedPreferences.getInstance();

    final extractedUserData =
        json.decode(prefs.getString('userData')) as Map<String, Object>;

    if (extractedUserData['serviceProvider'] != "Dialog" ||
        extractedUserData['serviceProvider'] != "Mobitel") {
      final response1 = await http.post(
        Uri.parse(url1),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          {
            'phoneNo': extractedUserData['phoneNo'],
            'serviceProvider': extractedUserData['serviceProvider'],
          },
        ),
      );

      final response1Data = json.decode(response1.body);
      final data = response1Data['data']['subscriptionStatus'];

      if (data == 'REGISTERED') {
        isSubscribed = true;
      } else {
        isSubscribed = false;
      }
    } else if (extractedUserData['serviceProvider'] == " ") {
      isSubscribed = false;
    } else {
      isSubscribed = true;
    }

    _token = extractedUserData['token'];
    userId = extractedUserData['userId'];
    isSubscribed = isSubscribed;
    phoneNo = extractedUserData['phoneNo'];
    firstName = extractedUserData['firstName'];
    lastName = extractedUserData['lastName'];
    nicNo = extractedUserData['nicNo'];
    mark = extractedUserData['mark'];
    noOfFinishedLessons = extractedUserData['noOfFinishedLessons'];
    serviceProvider = extractedUserData['serviceProvider'];

    notifyListeners();
  }

  Future<void> updateCD() async {
    final prefs = await SharedPreferences.getInstance();

    var extractedUserData =
        json.decode(prefs.getString('userData')) as Map<String, Object>;

    int count = int.parse(extractedUserData['noOfFinishedLessons'].toString());

    count = count + 1;
    extractedUserData['noOfFinishedLessons'] = count;
    noOfFinishedLessons = extractedUserData['noOfFinishedLessons'];
    print(extractedUserData['noOfFinishedLessons']);

    final userData = json.encode(
      {
        'token': extractedUserData['token'],
        'userId': extractedUserData['userId'],
        'expiryDate': extractedUserData['expiryDate'],
        'isSubscribed': extractedUserData['isSubscribed'],
        'phoneNo': extractedUserData['phoneNo'],
        'firstName': extractedUserData['firstName'],
        'lastName': extractedUserData['lastName'],
        'nicNo': extractedUserData['nicNo'],
        'mark': extractedUserData['mark'],
        'noOfFinishedLessons': extractedUserData['noOfFinishedLessons'],
        'serviceProvider': extractedUserData['serviceProvider'],
      },
    );
    prefs.setString('userData', userData);

    notifyListeners();
  }

  Future<bool> getSubs() async {
    const url1 = 'https://mrenglish.tk/api/v1/dayDetails/getSubs';
    final prefs = await SharedPreferences.getInstance();

    var extractedUserData =
        json.decode(prefs.getString('userData')) as Map<String, Object>;

    if (extractedUserData['serviceProvider'] != "Dialog" ||
        extractedUserData['serviceProvider'] != "Mobitel") {
      final response1 = await http.post(
        Uri.parse(url1),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          {
            'phoneNo': extractedUserData['phoneNo'],
            'serviceProvider': extractedUserData['serviceProvider'],
          },
        ),
      );

      final response1Data = json.decode(response1.body);
      final data = response1Data['data']['subscriptionStatus'];

      if (data == 'REGISTERED') {
        isSubscribed = true;
      } else {
        isSubscribed = false;
      }
    } else if (extractedUserData['serviceProvider'] == " ") {
      isSubscribed = false;
    } else {
      isSubscribed = true;
    }

    // int count = int.parse(extractedUserData['noOfFinishedLessons'].toString());
    // extractedUserData['noOfFinishedLessons'] = count + 1;

    final userData = json.encode(
      {
        'token': extractedUserData['token'],
        'userId': extractedUserData['userId'],
        'expiryDate': extractedUserData['expiryDate'],
        'isSubscribed': isSubscribed,
        'phoneNo': extractedUserData['phoneNo'],
        'firstName': extractedUserData['firstName'],
        'lastName': extractedUserData['lastName'],
        'nicNo': extractedUserData['nicNo'],
        'mark': extractedUserData['mark'],
        'noOfFinishedLessons': extractedUserData['noOfFinishedLessons'],
        'serviceProvider': extractedUserData['serviceProvider'],
      },
    );
    prefs.setString('userData', userData);

    notifyListeners();

    return isSubscribed;
  }
}
