import 'dart:convert';
import 'dart:io';

import '../providers/auth.dart';
import '../providers/day.dart';
import '../providers/year.dart';

import '../constants.dart';
import '../providers/days.dart';
import '../providers/years.dart';
import './days_overview_screen.dart';
import './years_overview_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import '../size_config.dart';

class PaymentScreen extends StatefulWidget {
  static const routeName = '/payment_screen';

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var _isLoading = false;

  // Future<void> updateDay(context, String id, String token, String userId,
  //     String routeName, String dayDetailsId, Day day) async {
  //   setState(() {
  //     _isLoading = true;
  //   });
  //   final url1 = 'https://mrenglish.tk/api/v1/dayDetails/$userId/$id';

  //   var today = new DateTime.now();
  //   var activeDay =
  //       today.add(new Duration(days: 7)).toString().substring(0, 10);

  //   try {
  //     await http.post(
  //       url1,
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         HttpHeaders.authorizationHeader: "Bearer $token",
  //       },
  //       body: jsonEncode(
  //         {
  //           'activeDay': activeDay,
  //         },
  //       ),
  //     );
  //   } catch (error) {
  //     print(error);
  //     throw (error);
  //   }

  //   Navigator.of(context).popAndPushNamed(routeName);
  // }

  Future<void> updateDay(
      context,
      String id,
      String token,
      String userId,
      String routeName,
      String dayDetailsId,
      Day day,
      String amount,
      String phoneNo) async {
    String data;
    setState(() {
      _isLoading = true;
    });
    final url = 'https://mrenglish.tk/api/v1/dayDetails/pay';
    try {
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          {
            'phoneNo': phoneNo,
            'amount': amount,
          },
        ),
      );
      final responseData = json.decode(response.body);
      data = responseData['data']['statusDetail'];
    } catch (error) {
      print(error);
      throw (error);
    }

    print('1111111111111111');
    print(dayDetailsId);
    print('1111111111111111');

    if (data == "Request was successfully processed." && dayDetailsId == null) {
      final url1 = 'https://mrenglish.tk/api/v1/dayDetails/$userId/$id';

      var today = new DateTime.now();
      var activeDay =
          today.add(new Duration(days: 7)).toString().substring(0, 10);
      // print(activeYear);

      try {
        await http.post(
          url1,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: "Bearer $token",
          },
          body: jsonEncode(
            {
              'activeDay': activeDay,
            },
          ),
        );
      } catch (error) {
        print(error);

        // throw (error);
      }

      Navigator.of(context).popAndPushNamed(routeName);
    } else if (data == "Request was successfully processed." &&
        dayDetailsId != null) {
      final url1 = 'https://mrenglish.tk/api/v1/dayDetails/$dayDetailsId';

      var today = new DateTime.now();
      var activeDay =
          today.add(new Duration(days: 7)).toString().substring(0, 10);
      // print(activeYear);

      try {
        await http.put(
          url1,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: "Bearer $token",
          },
          body: jsonEncode(
            {
              'activeDay': activeDay,
            },
          ),
        );
      } catch (error) {
        print(error);

        // throw (error);
      }

      Navigator.of(context).popAndPushNamed(routeName);
    } else {
      _showErrorDialog(data);
    }
    setState(() {
      _isLoading = false;
    });
  }

  Future<void> updateYear(
      context,
      String id,
      String token,
      String userId,
      String routeName,
      String yearDetailsId,
      Year year,
      String amount,
      String phoneNo) async {
    String data;
    setState(() {
      _isLoading = true;
    });
    final url = 'https://mrenglish.tk/api/v1/dayDetails/pay';
    try {
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          {
            'phoneNo': phoneNo,
            'amount': amount,
          },
        ),
      );
      final responseData = json.decode(response.body);
      data = responseData['data']['statusDetail'];
    } catch (error) {
      print(error);
      throw (error);
    }

    if (data == "Request was successfully processed.") {
      final url1 = 'https://mrenglish.tk/api/v1/yearDetails/$userId/$id';

      var today = new DateTime.now();
      var activeYear =
          today.add(new Duration(days: 14)).toString().substring(0, 10);
      print(activeYear);

      try {
        await http.post(
          url1,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: "Bearer $token",
          },
          body: jsonEncode(
            {
              'activeYear': activeYear,
            },
          ),
        );
      } catch (error) {
        print(error);

        // throw (error);
      }

      Navigator.of(context).popAndPushNamed(routeName);
    } else {
      _showErrorDialog(data);
    }
    setState(() {
      _isLoading = false;
    });
  }

  void _showErrorDialog(String message) {
    if (message == 'Insufficient balance.') {
      message = "ඔබේ දුරකථන අංකයේ ප්‍රමාණවත් මුදලක් නොමැත.";
    } else if (message ==
        'Subscriber is not registered to use this application.') {
      message = "ඔබ සේවාවෙන් ඉවත් වී ඇත. නැවත සේවාවට subscribe කරන්න.";
    } else {
      message = 'පසුව උත්සහා කරන්න.....';
    }
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Error 1ක් තියනවා.'),
        content: Text(message),
        actions: <Widget>[
          message == "ඔබ සේවාවෙන් ඉවත් වී ඇත. නැවත සේවාවට subscribe කරන්න."
              ? FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushReplacementNamed('/');
                    Provider.of<Auth>(context, listen: false).logout();

                    // Navigator.pushNamed(context, SignInScreen.routeName);
                  },
                  child: Text('OK......'))
              : FlatButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                    // Navigator.pushNamed(context, SignInScreen.routeName);
                  },
                  child: Text('OK'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final items = ModalRoute.of(context).settings.arguments as List;
    String amount;
    String id = items[0];
    Day loadedDay;
    Year loadedYear;

    final userId = Provider.of<Auth>(context, listen: false).userId;
    final phoneNo = Provider.of<Auth>(context, listen: false).phoneNo;

    if (items[1] == 'day') {
      loadedDay = Provider.of<Days>(context, listen: false).findByID(id);
      amount = loadedDay.amount;
    } else {
      loadedYear = Provider.of<Years>(context, listen: false).findByID(id);
      amount = loadedYear.amount;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(17),
          ),
        ),
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              margin: EdgeInsets.only(top: getProportionateScreenHeight(110)),
              height: getProportionateScreenHeight(460),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenHeight(15)),
                  ),
                  elevation: 6,
                  margin: EdgeInsets.all(getProportionateScreenHeight(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft:
                              Radius.circular(getProportionateScreenHeight(10)),
                          topRight:
                              Radius.circular(getProportionateScreenHeight(10)),
                        ),
                        child: Image.asset(
                          'assets/images/paymentScreenIcon.jpg',
                          fit: BoxFit.cover,
                          height: getProportionateScreenHeight(250),
                          width: double.infinity,
                        ),
                      ),
                      Container(
                        // decoration: BoxDecoration(
                        //   color: Colors.black54,
                        // ),
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'විශේෂ දැනුම්දීම.',
                              style: TextStyle(
                                  fontSize: getProportionateScreenHeight(20),
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                            Divider(
                              height: getProportionateScreenHeight(7),
                            ),
                            Text(
                              'මෙම සේවාව ලබා ගැනීමට ඔබ Register වීමේදී ලබා දුන් දුරකථන අංකයෙන් Rs.${amount}ක මුදලක් අය කරගනු ලැබේ. Active කිරීම දින 7ක් සඳහා පමණක් වලංගු වේ.ඒ සඳහා ඔබ කැමතිද?',
                              style: TextStyle(
                                fontSize: getProportionateScreenHeight(13),
                                color: kPrimaryColor,
                              ),
                              softWrap: true,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: GestureDetector(
                              onTap: () {
                                if (items[1] == 'day') {
                                  Navigator.of(context).popAndPushNamed(
                                      DaysOverviewScreen.routeName);
                                } else
                                  Navigator.of(context).popAndPushNamed(
                                      YearsOverviewScreen.routeName);
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  bottom: getProportionateScreenHeight(5),
                                  left: getProportionateScreenHeight(5),
                                  right: getProportionateScreenHeight(5),
                                ),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getProportionateScreenHeight(15)),
                                  color: Colors.red,
                                ),
                                padding: EdgeInsets.all(
                                    getProportionateScreenHeight(10)),
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                      fontSize:
                                          getProportionateScreenHeight(15),
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: GestureDetector(
                              onTap: () {
                                if (items[1] == 'day') {
                                  updateDay(
                                      context,
                                      id,
                                      loadedDay.authToken,
                                      userId,
                                      DaysOverviewScreen.routeName,
                                      loadedDay.dayDetailsId,
                                      loadedDay,
                                      amount,
                                      phoneNo);
                                } else
                                  updateYear(
                                    context,
                                    id,
                                    loadedYear.authToken,
                                    userId,
                                    YearsOverviewScreen.routeName,
                                    loadedYear.yearDetailsId,
                                    loadedYear,
                                    amount,
                                    phoneNo,
                                  );
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  bottom: getProportionateScreenHeight(5),
                                  left: getProportionateScreenHeight(5),
                                  right: getProportionateScreenHeight(5),
                                ),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getProportionateScreenHeight(15)),
                                  color: Color(0xFF14a96b),
                                ),
                                padding: EdgeInsets.all(
                                    getProportionateScreenHeight(10)),
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                      fontSize:
                                          getProportionateScreenHeight(15),
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
    );
  }
}
