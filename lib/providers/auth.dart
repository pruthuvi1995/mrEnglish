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
    print('123456789');
    return token != null;
  }

  String get token {
    if (_expiryDate != null &&
        _token != null &&
        _expiryDate.isAfter(DateTime.now())) {
      print('123456');
      return _token;
    }
    print(_expiryDate);
    print('_token');
    print(_token);
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
      this._token = responseData['token'];

      this._expiryDate = DateTime.parse(responseData['options']['expires']);
      this.userId = responseData['user']['_id'];
      this.isSubscribed = responseData['user']['isSubscribed'];
      this.phoneNo = responseData['user']['phoneNo'];
      this.firstName = responseData['user']['firstName'];
      this.lastName = responseData['user']['lastName'];
      this.nicNo = responseData['user']['NICNo'];
      this.mark = double.parse(responseData['user']['mark'].toString());
      this.noOfFinishedLessons = responseData['user']['noOfFinishedLessons'];
      this.serviceProvider = responseData['user']['serviceProvider'];
      print('7777777');
      print(this.serviceProvider);
      _autoLogout();
      notifyListeners();
      final prefs = await SharedPreferences.getInstance();
      final userData = json.encode(
        {
          'token': this._token,
          'userId': this.userId,
          'expiryDate': this._expiryDate.toIso8601String(),
          'isSubscribed': this.isSubscribed,
          'phoneNo': this.phoneNo,
          'firstName': this.firstName,
          'lastName': this.lastName,
          'nicNo': this.nicNo,
          'mark': this.mark,
          'noOfFinishedLessons': this.noOfFinishedLessons,
          'serviceProvider': this.serviceProvider,
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
      this._token = responseData['token'];
      this._expiryDate = DateTime.parse(responseData['options']['expires']);
      this.userId = responseData['user']['_id'];
      this.phoneNo = responseData['user']['phoneNo'];
      this.firstName = responseData['user']['firstName'];
      this.lastName = responseData['user']['lastName'];
      this.nicNo = responseData['user']['NICNo'];
      this.mark = double.parse(responseData['user']['mark'].toString());
      this.noOfFinishedLessons = responseData['user']['noOfFinishedLessons'];
      this.serviceProvider = responseData['user']['serviceProvider'];
      print('7777777');
      print(this.serviceProvider);

      if (this.serviceProvider == "Dialog" ||
          this.serviceProvider == "Mobitel") {
        final response1 = await http.post(
          Uri.parse(url1),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(
            {
              'phoneNo': this.phoneNo,
              'serviceProvider': this.serviceProvider,
            },
          ),
        );

        final response1Data = json.decode(response1.body);
        final data = response1Data['data']['subscriptionStatus'];

        if (data == 'REGISTERED') {
          this.isSubscribed = true;
        } else {
          this.isSubscribed = false;
        }
        await Future.delayed(Duration(seconds: 1));
      } else if (this.serviceProvider == " ") {
        print('thuvi');
        this.isSubscribed = false;
        await Future.delayed(Duration(seconds: 3));
      } else if (this.serviceProvider != "Dialog" &&
          this.serviceProvider != "Mobitel" &&
          this.serviceProvider != " ") {
        print('hasanjana');
        this.isSubscribed = true;
        await Future.delayed(Duration(seconds: 3));
      }

      _autoLogout();
      notifyListeners();
      final prefs = await SharedPreferences.getInstance();
      final userData = json.encode(
        {
          'token': this._token,
          'userId': this.userId,
          'expiryDate': this._expiryDate.toIso8601String(),
          'isSubscribed': this.isSubscribed,
          'phoneNo': this.phoneNo,
          'firstName': this.firstName,
          'lastName': this.lastName,
          'nicNo': this.nicNo,
          'mark': this.mark,
          'noOfFinishedLessons': this.noOfFinishedLessons,
          'serviceProvider': this.serviceProvider,
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
    print('99999999999999');
    print(extractedUserData);
    final expiryDate = DateTime.parse(extractedUserData['expiryDate']);

    if (expiryDate.isBefore(DateTime.now())) {
      return false;
    }

    print(extractedUserData['serviceProvider']);

    this._token = extractedUserData['token'];
    this.userId = extractedUserData['userId'];

    this._expiryDate = expiryDate;
    this.phoneNo = extractedUserData['phoneNo'];
    this.firstName = extractedUserData['firstName'];
    this.lastName = extractedUserData['lastName'];
    this.nicNo = extractedUserData['nicNo'];
    this.mark = extractedUserData['mark'];
    this.noOfFinishedLessons = extractedUserData['noOfFinishedLessons'];
    this.serviceProvider = extractedUserData['serviceProvider'];

    if (extractedUserData['serviceProvider'] == "Dialog" ||
        extractedUserData['serviceProvider'] == "Mobitel") {
      final response1 = await http.post(
        Uri.parse(url1),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          {
            'phoneNo': this.phoneNo,
            'serviceProvider': this.serviceProvider,
          },
        ),
      );

      final response1Data = json.decode(response1.body);
      final data = response1Data['data']['subscriptionStatus'];

      if (data == 'REGISTERED') {
        this.isSubscribed = true;
      } else {
        this.isSubscribed = false;
      }
      await Future.delayed(Duration(seconds: 1));
    } else if (extractedUserData['serviceProvider'] == " ") {
      await Future.delayed(Duration(seconds: 3));
      this.isSubscribed = false;
      print('thuvi');
    } else if (extractedUserData['serviceProvider'] != "Dialog" &&
        extractedUserData['serviceProvider'] != "Mobitel" &&
        extractedUserData['serviceProvider'] != " ") {
      print(serviceProvider);
      print('hasanjana');
      await Future.delayed(Duration(seconds: 3));
      this.isSubscribed = true;
    }

    notifyListeners();
    _autoLogout();
    return true;
  }

  Future<void> logout() async {
    this._token = null;
    this.userId = null;
    this._expiryDate = null;
    if (this._authTimer != null) {
      this._authTimer.cancel();
      this._authTimer = null;
    }
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  void _autoLogout() {
    if (this._authTimer != null) {
      this._authTimer.cancel();
    }
    final timeToExpiry = this._expiryDate.difference(DateTime.now()).inSeconds;
    this._authTimer = Timer(Duration(seconds: timeToExpiry), logout);
  }

  Future<void> updatePhoneNumber(
      String phoneNoNew, String serviceProvider) async {
    const url1 = 'https://mrenglish.tk/api/v1/dayDetails/getSubs';
    this.isSubscribed = !this.isSubscribed;
    final prefs = await SharedPreferences.getInstance();

    var extractedUserData =
        json.decode(prefs.getString('userData')) as Map<String, Object>;

    extractedUserData['phoneNo'] = phoneNoNew;
    extractedUserData['isSubscribed'] = this.isSubscribed;
    extractedUserData['serviceProvider'] = serviceProvider;

    print('ccccccccccccccc');
    print(phoneNoNew);

    if (this.serviceProvider == "Dialog" || this.serviceProvider == "Mobitel") {
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
        this.isSubscribed = true;
      } else {
        this.isSubscribed = false;
      }
      await Future.delayed(Duration(seconds: 1));
    } else if (this.serviceProvider == " ") {
      this.isSubscribed = false;
      await Future.delayed(Duration(seconds: 3));
    } else if (this.serviceProvider != "Dialog" &&
        this.serviceProvider != "Mobitel" &&
        this.serviceProvider != " ") {
      print('hasanjana');
      this.isSubscribed = true;
      await Future.delayed(Duration(seconds: 3));
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
    this.phoneNo = extractedUserData['phoneNo'];
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
    this.mark = mark * 2;
    const url1 = 'https://mrenglish.tk/api/v1/dayDetails/getSubs';
    final prefs = await SharedPreferences.getInstance();

    var extractedUserData =
        json.decode(prefs.getString('userData')) as Map<String, Object>;

    extractedUserData['mark'] = mark;
    if (extractedUserData['serviceProvider'] == "Dialog" ||
        extractedUserData['serviceProvider'] == "Mobitel") {
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
        this.isSubscribed = true;
      } else {
        this.isSubscribed = false;
      }
      await Future.delayed(Duration(seconds: 1));
    } else if (extractedUserData['serviceProvider'] == " ") {
      this.isSubscribed = false;
      await Future.delayed(Duration(seconds: 3));
    } else if (extractedUserData['serviceProvider'] != "Dialog" &&
        extractedUserData['serviceProvider'] != "Mobitel" &&
        extractedUserData['serviceProvider'] != " ") {
      print('hasanjana');
      this.isSubscribed = true;
      await Future.delayed(Duration(seconds: 3));
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

    if (extractedUserData['serviceProvider'] == "Dialog" ||
        extractedUserData['serviceProvider'] == "Mobitel") {
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
        this.isSubscribed = true;
      } else {
        this.isSubscribed = false;
      }
      await Future.delayed(Duration(seconds: 1));
    } else if (extractedUserData['serviceProvider'] == " ") {
      this.isSubscribed = false;
      await Future.delayed(Duration(seconds: 3));
    } else if (extractedUserData['serviceProvider'] != "Dialog" &&
        extractedUserData['serviceProvider'] != "Mobitel" &&
        extractedUserData['serviceProvider'] != " ") {
      print('hasanjana');
      this.isSubscribed = true;
      await Future.delayed(Duration(seconds: 3));
    }

    this._token = extractedUserData['token'];
    this.userId = extractedUserData['userId'];
    this.isSubscribed = isSubscribed;
    this.phoneNo = extractedUserData['phoneNo'];
    this.firstName = extractedUserData['firstName'];
    this.lastName = extractedUserData['lastName'];
    this.nicNo = extractedUserData['nicNo'];
    this.mark = extractedUserData['mark'];
    this.noOfFinishedLessons = extractedUserData['noOfFinishedLessons'];
    this.serviceProvider = extractedUserData['serviceProvider'];

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

  // Future<bool> getSubs() async {
  //   const url1 = 'https://mrenglish.tk/api/v1/dayDetails/getSubs';
  //   final prefs = await SharedPreferences.getInstance();

  //   var extractedUserData =
  //       json.decode(prefs.getString('userData')) as Map<String, Object>;

  //   if (extractedUserData['serviceProvider'] == "Dialog" ||
  //       extractedUserData['serviceProvider'] == "Mobitel") {
  //     final response1 = await http.post(
  //       Uri.parse(url1),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //       body: jsonEncode(
  //         {
  //           'phoneNo': extractedUserData['phoneNo'],
  //           'serviceProvider': extractedUserData['serviceProvider'],
  //         },
  //       ),
  //     );

  //     final response1Data = json.decode(response1.body);
  //     final data = response1Data['data']['subscriptionStatus'];

  //     if (data == 'REGISTERED') {
  //       this.isSubscribed = true;
  //     } else {
  //       this.isSubscribed = false;
  //     }
  //   } else if (extractedUserData['serviceProvider'] == " ") {
  //     this.isSubscribed = false;
  //   } else if (extractedUserData['serviceProvider'] != "Dialog" &&
  //       extractedUserData['serviceProvider'] != "Mobitel" &&
  //       extractedUserData['serviceProvider'] != " ") {
  //     print('hasanjana');
  //     this.isSubscribed = true;
  //   }

  //   // int count = int.parse(extractedUserData['noOfFinishedLessons'].toString());
  //   // extractedUserData['noOfFinishedLessons'] = count + 1;

  //   final userData = json.encode(
  //     {
  //       'token': extractedUserData['token'],
  //       'userId': extractedUserData['userId'],
  //       'expiryDate': extractedUserData['expiryDate'],
  //       'isSubscribed': isSubscribed,
  //       'phoneNo': extractedUserData['phoneNo'],
  //       'firstName': extractedUserData['firstName'],
  //       'lastName': extractedUserData['lastName'],
  //       'nicNo': extractedUserData['nicNo'],
  //       'mark': extractedUserData['mark'],
  //       'noOfFinishedLessons': extractedUserData['noOfFinishedLessons'],
  //       'serviceProvider': extractedUserData['serviceProvider'],
  //     },
  //   );
  //   prefs.setString('userData', userData);

  //   notifyListeners();

  //   return this.isSubscribed;
  // }
}
