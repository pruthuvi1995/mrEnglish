import 'dart:convert';

import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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
import 'package:firebase_messaging/firebase_messaging.dart';
import '../providers/message.dart';
import '../size_config.dart';
import 'instructions_screen.dart';
import 'notification_screeen.dart';

class CourseListScreen extends StatefulWidget {
  static const String routeName = '/course-list';

  @override
  _CourseListScreenState createState() => _CourseListScreenState();
}

class _CourseListScreenState extends State<CourseListScreen> {
  var _isInit = true;
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  FlutterLocalNotificationsPlugin fltNotification;
  var _isLoading = false;
  var _page = 'ourCourses';

  @override
  void initState() {
    notificationPermission();
    super.initState();
    // _firebaseMessaging.configure(
    //   onMessage: (Map<String, dynamic> message) async {
    //     print("onMessage: $message");
    //     final notification = message['notification'];
    //     setState(() {
    //       messages.add(Message(
    //           title: notification['title'], body: notification['body']));
    //     });
    //   },
    //   onLaunch: (Map<String, dynamic> message) async {
    //     print("onLaunch: $message");

    //     final notification = message['data'];
    //     setState(() {
    //       messages.add(Message(
    //           title: notification['title'], body: notification['body']));
    //     });
    //   },
    //   onResume: (Map<String, dynamic> message) async {
    //     print("onResume: $message");
    //   },
    // );
    // _firebaseMessaging.requestNotificationPermissions(
    //     const IosNotificationSettings(sound: true, badge: true, alert: true));
  }

  void getToken() async {
    print('1234567');
    print(await messaging.getToken());
  }

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

  Widget buildCircle(String page) {
    return Column(
      children: [
        Text('Our courses'),
        Container(
          width: 75,
          height: 75,
          decoration: new BoxDecoration(
            color: kPrimaryColor,
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(getProportionateScreenWidth(5)),
          margin: EdgeInsets.all(getProportionateScreenWidth(10)),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _page = page;
              });
            },
            child: Icon(
              Icons.library_books,
              size: getProportionateScreenWidth(35),
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Card buildLessonCard(String title, String description, String navigation,
      String token, String uTubeUrl) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
        ),
        elevation: 6,
        margin: EdgeInsets.all(getProportionateScreenWidth(5)),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(UnsubscribeScreen.routeName, arguments: [
                  navigation,
                  token,
                ]);

                // subscribeOnTap(navigation, isSubscribed, token);
              },
              child: Container(
                // margin: EdgeInsets.only(
                //   left: getProportionateScreenHeight(5),
                //   right: getProportionateScreenHeight(5),
                //   bottom: getProportionateScreenHeight(5),
                // ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(getProportionateScreenHeight(15)),
                  color: kPrimaryColor,
                ),
                padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                child: Text(
                  'More details',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    getToken();
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'මඳ වේලාවක් රැදී සිටින්න.',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(15),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenWidth(15)),
                  CircularProgressIndicator(),
                ],
              ),
            )
          : RefreshIndicator(
              onRefresh: () => _refreshCourses(context),
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  Row(
                    children: [
                      buildCircle('ourCourses'),
                      buildCircle('instructions'),
                    ],
                  ),
                  if (_page == 'ourCourses')
                    Column(
                      children: [
                        buildLessonCard(
                          loadedCourses.items[1].title,
                          loadedCourses.items[1].description,
                          DaysOverviewScreen.routeName,
                          token,
                          'URL for course 01',
                        ),
                        buildLessonCard(
                          loadedCourses.items[0].title,
                          loadedCourses.items[0].description,
                          YearsOverviewScreen.routeName,
                          token,
                          'URL for course 02',
                        ),
                      ],
                    )
                  else if (_page == 'instructions')
                    Column(
                      children: [
                        buildLessonCard(
                          'instruction01',
                          loadedCourses.items[1].description,
                          DaysOverviewScreen.routeName,
                          token,
                          'URL for course 01',
                        ),
                        buildLessonCard(
                          'instruction02',
                          loadedCourses.items[0].description,
                          YearsOverviewScreen.routeName,
                          token,
                          'URL for course 02',
                        ),
                      ],
                    )
                ]),
              ),
            ),
    );
  }

  void initMessaging() {
    var androiInit = AndroidInitializationSettings('ic_launcher');
    var iosInit = IOSInitializationSettings();
    var initSetting = InitializationSettings(android: androiInit, iOS: iosInit);
    fltNotification = FlutterLocalNotificationsPlugin();
    fltNotification.initialize(initSetting);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      showNotification();
    });
  }

  void showNotification() async {
    var androidDetails = AndroidNotificationDetails(
        'channelId', 'channelName', 'channelDescription');
    var iosDetails = IOSNotificationDetails();
    var generalNotificationDetails =
        NotificationDetails(android: androidDetails, iOS: iosDetails);
    await fltNotification.show(0, 'title', 'body', generalNotificationDetails,
        payload: 'Notification');
  }

  void notificationPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }
}
