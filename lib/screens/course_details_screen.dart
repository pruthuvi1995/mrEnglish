import 'dart:convert';
import 'dart:io';

import 'package:mr_english/screens/subscribe_screen.dart';
import 'package:mr_english/screens/unsubscribe_screen.dart';

import '../providers/auth.dart';
import '../providers/courses.dart';

import './days_overview_screen.dart';

import './years_overview_screen.dart';
import '../widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';

import '../size_config.dart';
import 'instructions_screen.dart';
import 'notification_screeen.dart';

class CourseDetailsScreen extends StatefulWidget {
  static const String routeName = '/course-details';

  @override
  _CourseDetailsScreenState createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  var _isInit = true;

  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<Courses>(context).fetchAndSetCourses().then((_) {
        setState(() {
          _isLoading = false;
        });
      });

      _isInit = false;
    }

    super.didChangeDependencies();
  }

  Future<void> _refreshCourses(BuildContext context) async {
    await Provider.of<Courses>(context, listen: false).fetchAndSetCourses();
  }

  // Future<void> subscribeOnTap(
  //     String navigation, bool isSubscribed, String token) async {
  //   Provider.of<Auth>(context, listen: false).updateSubscription();
  //   setState(() {});
  //   final url = 'https://mrenglish.tk/api/v1/auth/updateDetails';
  //   try {
  //     await http.put(
  //       url,
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         HttpHeaders.authorizationHeader: "Bearer $token",
  //       },
  //       body: jsonEncode(
  //         {'isSubscribed': !isSubscribed},
  //       ),
  //     );
  //   } catch (error) {
  //     print(error);
  //     throw (error);
  //   }
  // }

  Future<void> joinClassButton(String navigation) async {
    Navigator.of(context).pushNamed(navigation);
  }

  Card buildLessonCard(String title, String description, String navigation,
      bool isSubscribed, String token, String image) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getProportionateScreenHeight(15)),
        ),
        elevation: 6,
        margin: EdgeInsets.all(getProportionateScreenHeight(10)),
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(getProportionateScreenHeight(15)),
                    topRight: Radius.circular(getProportionateScreenHeight(15)),
                  ),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    height: getProportionateScreenHeight(260),
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  top: getProportionateScreenHeight(20),
                  left: getProportionateScreenHeight(5),
                  right: getProportionateScreenHeight(5),
                  child: Container(
                    height: getProportionateScreenHeight(220),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                    ),
                    padding: EdgeInsets.all(getProportionateScreenHeight(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: getProportionateScreenHeight(20),
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        Divider(
                          height: getProportionateScreenHeight(7),
                          color: Colors.white,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(12),
                            color: Colors.white,
                          ),
                          softWrap: true,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (isSubscribed)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () {
                        print(isSubscribed);
                        Navigator.of(context)
                            .pushNamed(UnsubscribeScreen.routeName, arguments: [
                          navigation,
                          isSubscribed,
                          token,
                        ]);

                        // subscribeOnTap(navigation, isSubscribed, token);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: getProportionateScreenHeight(5),
                          right: getProportionateScreenHeight(5),
                          bottom: getProportionateScreenHeight(5),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              getProportionateScreenHeight(15)),
                          color: Colors.red,
                        ),
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Text(
                          'Unsubscribe',
                          style: TextStyle(
                              fontSize: getProportionateScreenHeight(17.5),
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
                        joinClassButton(navigation);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: getProportionateScreenHeight(5),
                          right: getProportionateScreenHeight(5),
                          bottom: getProportionateScreenHeight(5),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              getProportionateScreenHeight(15)),
                          color: Color(0xFF14a96b),
                        ),
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Text(
                          'Join class',
                          style: TextStyle(
                              fontSize: getProportionateScreenHeight(17.5),
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            else
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).popAndPushNamed(
                            SubscribeScreen.routeName,
                            arguments: [
                              navigation,
                              isSubscribed,
                              token,
                            ]);
                        // subscribeOnTap(navigation, isSubscribed, token);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              getProportionateScreenHeight(15)),
                          color: kPrimaryColor,
                        ),
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Text(
                          'Subscribe',
                          style: TextStyle(
                              fontSize: getProportionateScreenHeight(17.5),
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    final loadedCourses = Provider.of<Courses>(context, listen: false);
    var isSubscribed = Provider.of<Auth>(context, listen: true).isSubscribed;
    final token = Provider.of<Auth>(context, listen: false).token;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Our Courses',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(20),
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : RefreshIndicator(
              onRefresh: () => _refreshCourses(context),
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(InstructionsScreen.routeName);
                    },
                    child: Container(
                      margin: EdgeInsets.all(getProportionateScreenHeight(10)),
                      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenHeight(15)),
                        color: kPrimaryColor,
                      ),
                      width: double.infinity,
                      child: Text(
                        'Instructions - උපදෙස්',
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(20),
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.of(context)
                  //         .pushNamed(NotificationScreen.routeName);
                  //   },
                  //   child: Container(
                  //     margin: EdgeInsets.all(getProportionateScreenHeight(10)),
                  //     padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(
                  //           getProportionateScreenHeight(15)),
                  //       color: kPrimaryColor,
                  //     ),
                  //     width: double.infinity,
                  //     child: Text(
                  //       'Notifications',
                  //       style: TextStyle(
                  //         fontSize: getProportionateScreenWidth(20),
                  //         color: Colors.white,
                  //       ),
                  //       textAlign: TextAlign.center,
                  //     ),
                  //   ),
                  // ),
                  buildLessonCard(
                    loadedCourses.items[1].title,
                    loadedCourses.items[1].description,
                    DaysOverviewScreen.routeName,
                    isSubscribed,
                    token,
                    'assets/images/englishGrammerIcon.jpeg',
                  ),
                  buildLessonCard(
                    loadedCourses.items[0].title,
                    loadedCourses.items[0].description,
                    YearsOverviewScreen.routeName,
                    isSubscribed,
                    token,
                    'assets/images/paperDiscussionIcon.jpg',
                  ),
                ]),
              ),
            ),
    );
  }
}
