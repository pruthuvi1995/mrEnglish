import 'dart:convert';
import 'dart:io';

import 'package:mr_english/providers/auth.dart';
import 'package:provider/provider.dart';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

enum UnsubscribeMode { IsConfirm, Final }

class BodyUnsubscribeScreen extends StatefulWidget {
  final List details;
  BodyUnsubscribeScreen(this.details);
  @override
  _BodyUnsubscribeScreenState createState() =>
      _BodyUnsubscribeScreenState(details);
}

class _BodyUnsubscribeScreenState extends State<BodyUnsubscribeScreen> {
  var _isLoading = false;
  final List details;
  _BodyUnsubscribeScreenState(this.details);

  UnsubscribeMode _unsubscribeMode = UnsubscribeMode.IsConfirm;

  Future<void> subscribeOnTap(bool isSubscribed, String token) async {
    setState(() {
      _isLoading = true;
    });
    // Provider.of<Auth>(context, listen: false).updateSubscription();
    setState(() {});
    final url = 'https://mrenglish.tk/api/v1/auth/updateDetails';
    try {
      await http.put(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer $token",
        },
        body: jsonEncode(
          {'isSubscribed': !isSubscribed},
        ),
      );
    } catch (error) {
      print(error);
      throw (error);
    }
    setState(() {
      _unsubscribeMode = UnsubscribeMode.Final;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SizedBox(
              width: double.infinity,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                    SizedBox(height: SizeConfig.screenHeight * 0.2),
                    Text(
                      'Unsubscribe',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: getProportionateScreenWidth(28),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(40)),
                    _unsubscribeMode == UnsubscribeMode.IsConfirm
                        ? Column(
                            children: [
                              Text(
                                'Mr English සේවාවෙන් සම්පුර්ණයෙන්ම unsubscribe වීම සඳහා ඔබට අවශ්‍යද?',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: getProportionateScreenWidth(17),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(30),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    child: GestureDetector(
                                      onTap: () {
                                        // if (items[1] == 'day') {
                                        //   Navigator.of(context).popAndPushNamed(
                                        //       DaysOverviewScreen.routeName);
                                        // } else
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          bottom:
                                              getProportionateScreenHeight(5),
                                          left: getProportionateScreenHeight(5),
                                          right:
                                              getProportionateScreenHeight(5),
                                        ),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              getProportionateScreenHeight(15)),
                                          color: kPrimaryColor1,
                                        ),
                                        padding: EdgeInsets.all(
                                            getProportionateScreenHeight(10)),
                                        child: Text(
                                          'No',
                                          style: TextStyle(
                                              fontSize:
                                                  getProportionateScreenHeight(
                                                      15),
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
                                        // print(details[1]);
                                        // print('sssss');
                                        // bool isSubscribe;
                                        // details[1] == true
                                        //     ? isSubscribe = true
                                        //     : isSubscribe = false;
                                        subscribeOnTap(details[1], details[2]);
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          bottom:
                                              getProportionateScreenHeight(5),
                                          left: getProportionateScreenHeight(5),
                                          right:
                                              getProportionateScreenHeight(5),
                                        ),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              getProportionateScreenHeight(15)),
                                          color: kPrimaryColor,
                                        ),
                                        padding: EdgeInsets.all(
                                            getProportionateScreenHeight(10)),
                                        child: Text(
                                          'Yes',
                                          style: TextStyle(
                                              fontSize:
                                                  getProportionateScreenHeight(
                                                      15),
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
                          )
                        : Column(
                            children: [
                              Text(
                                'Unsubscribe වීමේ ක්‍රියාවලිය සම්පුර්ණවීම සඳහා ඔබ subscribe වීම සඳහා ලබා දුන් දුරකථනයෙන්  unreg mrenglish ලෙස type කර 77177 ට message 1ක් දමන්න.',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: getProportionateScreenWidth(17),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(30),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // if (items[1] == 'day') {
                                  //   Navigator.of(context).popAndPushNamed(
                                  //       DaysOverviewScreen.routeName);
                                  // } else
                                  Navigator.of(context).pop();
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
                                    color: kPrimaryColor1,
                                  ),
                                  padding: EdgeInsets.all(
                                      getProportionateScreenHeight(10)),
                                  child: Text(
                                    'Ok',
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(25),
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                    SizedBox(height: SizeConfig.screenHeight * 0.08),
                    // SizedBox(height: SizeConfig.screenHeight * 0.08),

                    SizedBox(height: getProportionateScreenHeight(20)),
                    // NoAccountText()
                  ]),
                ),
              ),
            ),
    );
  }
}
