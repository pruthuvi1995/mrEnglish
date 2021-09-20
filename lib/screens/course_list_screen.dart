import 'dart:convert';

import 'dart:io';
import 'dart:math';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:mr_english/api/notification_api.dart';
import 'package:mr_english/providers/classStudents.dart';
import 'package:mr_english/providers/freeVideos.dart';
import 'package:mr_english/screens/add_student_screen.dart';
import 'package:mr_english/screens/free_video_screen.dart';
import 'package:mr_english/screens/subscribe_screen.dart';
import 'package:mr_english/screens/unsubscribe_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
import 'course01_details_screen.dart';
import 'instructions_screen.dart';
import 'issue_certificate_screen.dart';
import 'notification_screeen.dart';
import 'seminars_overview_screen.dart';

class CourseListScreen extends StatefulWidget {
  static const String routeName = '/course-list';

  @override
  _CourseListScreenState createState() => _CourseListScreenState();
}

class _CourseListScreenState extends State<CourseListScreen> {
  var index = 3;
  var _isInit = true;
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  FlutterLocalNotificationsPlugin fltNotification;
  var _isLoading = false;
  var _page = 'Our Courses';

  @override
  void initState() {
    notificationPermission();
    super.initState();
    NotificationApi.init();
    listenNotifications();
  }

  void listenNotifications() =>
      NotificationApi.onNotifications.stream.listen(onClickedNotification);

  void onClickedNotification(String payload) =>
      Navigator.of(context).pushNamed(payload);

  void getToken() async {
    print(await messaging.getToken());
  }

  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<Courses>(context).fetchAndSetCourses().then((_) {
        Provider.of<ClassStudents>(context, listen: false)
            .fetchAndSetClassStudents()
            .then((_) {
          Provider.of<FreeVideos>(context, listen: false)
              .fetchAndSetVideos()
              .then((_) {
            setState(() {
              _isLoading = false;
            });
          });
        });
      });

      _isInit = false;
    }

    super.didChangeDependencies();
  }

  Future<void> _refreshCourses(BuildContext context, String nICNo) async {
    await Provider.of<Courses>(context, listen: false).fetchAndSetCourses();
    await Provider.of<ClassStudents>(context, listen: false)
        .fetchAndSetClassStudents();
    await Provider.of<FreeVideos>(context, listen: false).fetchAndSetVideos();
  }

  Future<void> joinClassButton(String navigation) async {
    Navigator.of(context).pushNamed(navigation);
  }

  Card buildLessonCard(String title, String description, String navigation,
      String token, String uTubeUrl) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
        ),
        elevation: 6,
        margin: EdgeInsets.only(
            left: getProportionateScreenWidth(25),
            right: getProportionateScreenWidth(25),
            top: getProportionateScreenWidth(10)),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor),
            borderRadius:
                BorderRadius.circular(getProportionateScreenWidth(20)),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(15),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(Course01DetailsScreen.routeName, arguments: [
                    title,
                    description,
                    uTubeUrl,
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
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  child: Text(
                    'වැඩි විස්තර සඳහා',
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(15),
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Card buildAddStudentCard() {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
        ),
        elevation: 6,
        margin: EdgeInsets.only(
            left: getProportionateScreenWidth(25),
            right: getProportionateScreenWidth(25),
            top: getProportionateScreenWidth(10),
            bottom: getProportionateScreenWidth(10)),
        child: Container(
          // height: getProportionateScreenHeight(100),
          decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor),
            borderRadius:
                BorderRadius.circular(getProportionateScreenWidth(20)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(AddStudentScreen.routeName);
            },
            child: Container(
              height: getProportionateScreenHeight(100),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(getProportionateScreenHeight(15)),
                color: kPrimaryColor,
              ),
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              child: Text(
                'Add Students',
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(25),
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ));
  }

  final appBar = AppBar(
    title: Text(
      'Mr English',
      style: TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
        fontSize: getProportionateScreenHeight(17),
      ),
    ),
  );

  double roundDouble(double value, int places) {
    double mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  Widget buildBottomNavigationBar() {
    return BottomNavyBar(
      selectedIndex: index,
      onItemSelected: (index) => setState(() => this.index = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
            icon: Icon(Icons.help),
            title: Text('ගැටළු'),
            inactiveColor: Colors.black,
            textAlign: TextAlign.center),
        BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('My profile'),
            inactiveColor: Colors.black,
            textAlign: TextAlign.center),
        BottomNavyBarItem(
            icon: Icon(Icons.video_collection),
            title: Text('Free Videos'),
            inactiveColor: Colors.black,
            textAlign: TextAlign.center),
        BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Courses'),
            inactiveColor: Colors.black,
            textAlign: TextAlign.center),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final firstName = Provider.of<Auth>(context, listen: false).firstName;
    final lastName = Provider.of<Auth>(context, listen: false).lastName;
    final nicNo = Provider.of<Auth>(context, listen: false).nicNo;
    var mark = Provider.of<Auth>(context, listen: false).mark;
    final noOfFinishedLessons =
        Provider.of<Auth>(context, listen: false).noOfFinishedLessons;
    String name = '$firstName $lastName';
    String stringMark = '${mark.toString()}%';
    mark = roundDouble(mark, 2);
    getToken();
    final loadedCourses = Provider.of<Courses>(context, listen: false);
    final loadedClassStudents =
        Provider.of<ClassStudents>(context, listen: false).items;
    final loadedImages =
        Provider.of<FreeVideos>(context, listen: false).imageList;
    final token = Provider.of<Auth>(context, listen: false).token;

    final height = MediaQuery.of(context).size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top -
        appBar.preferredSize.height;

    print(index);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: index == 2
            ? Text(
                'නොමිලේ ලබාදෙන වීඩියෝ',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(15),
                ),
              )
            : Text(
                'Hi! $firstName',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(15),
                ),
              ),
        iconTheme: IconThemeData(color: kPrimaryColor),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
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
          : index == 2
              ? FreeVideoScreen(height)
              : RefreshIndicator(
                  onRefresh: () => _refreshCourses(context, nicNo),
                  child: Column(children: <Widget>[
                    Container(
                      decoration: new BoxDecoration(
                        // color: kPrimaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                              height: height * .27,
                              width: double.infinity,
                              child: Container(
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(
                                            getProportionateScreenWidth(10)),
                                        child: Text(
                                          'පහත වීඩියෝ දැන් ඔබට නොමිලේ නැරඹිය හැක ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      15)),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: 3,
                                          right: 3,
                                        ),
                                        child: SizedBox(
                                          height: height * .175,
                                          child: ListView.builder(
                                            itemCount: loadedImages.length,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, index) =>
                                                GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  this.index = 2;
                                                });
                                              },
                                              child: Container(
                                                margin: EdgeInsets.all(2),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getProportionateScreenWidth(
                                                              15)),
                                                  child: Image.network(
                                                    loadedImages[index],
                                                    fit: BoxFit.fitHeight,
                                                    height: height * .15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    if (index == 3)
                      Container(
                        height: height * .73,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                'ඔබට අවශ්‍ය පාඨමාලාව තෝරන්න.',
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(15),
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              buildLessonCard(
                                loadedCourses.items[12].title,
                                loadedCourses.items[12].description,
                                DaysOverviewScreen.routeName,
                                token,
                                'URL for course 01',
                              ),
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
                              buildLessonCard(
                                loadedCourses.items[2].title,
                                loadedCourses.items[2].description,
                                SeminarsOverviewScreen.routeName,
                                token,
                                'URL for course 03',
                              ),
                              ...(loadedClassStudents as List).map(
                                (classStudent) {
                                  return buildLessonCard(
                                    classStudent.title,
                                    classStudent.description,
                                    SeminarsOverviewScreen.routeName,
                                    token,
                                    'URL for course 04',
                                  );
                                },
                              ).toList(),
                              if (nicNo == '951062219v' ||
                                  nicNo == '881770644v')
                                buildAddStudentCard(),
                            ],
                          ),
                        ),
                      )
                    else if (index == 1)
                      Container(
                        height: height * .73,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                'මගේ විස්තර',
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(15),
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                  child: Column(children: [
                                buildDetailsCard('Name', name),
                                buildDetailsCard('NIC Number', nicNo),
                                // buildDetailsCard('Phone Number', phoneNo),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    buildBigCard('Total', 'Mark', stringMark),
                                    buildBigCard('Completed', 'Days',
                                        noOfFinishedLessons.toString()),
                                  ],
                                ),
                                if (noOfFinishedLessons == 40)
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: getProportionateScreenHeight(10),
                                        left: getProportionateScreenHeight(10),
                                        right:
                                            getProportionateScreenHeight(10)),
                                    child: RaisedButton(
                                      color: kPrimaryColor,
                                      onPressed: () {
                                        Navigator.of(context).pushNamed(
                                            IssueCertificateScreen.routeName);
                                      },
                                      child: Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: double.infinity,
                                            padding: EdgeInsets.all(15),
                                            child: Text(
                                              'සහතික පත්‍රය ලබා ගැනීමට.',
                                              style: TextStyle(
                                                fontSize:
                                                    getProportionateScreenHeight(
                                                        18),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: double.infinity,
                                            padding: EdgeInsets.only(
                                                bottom:
                                                    getProportionateScreenHeight(
                                                        15)),
                                            child: Text(
                                              'Click here',
                                              style: TextStyle(
                                                fontSize:
                                                    getProportionateScreenHeight(
                                                        18),
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                              ])),
                            ],
                          ),
                        ),
                      )
                    else if (index == 0)
                      Container(
                        padding:
                            EdgeInsets.all(getProportionateScreenWidth(10)),
                        height: height * .73,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                'App 1 භාවිතා කරන විට ඔබට පැමිණි ගැටළුව',
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(15),
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Divider(),
                              Container(
                                color: Colors.green,
                                padding: EdgeInsets.all(
                                    getProportionateScreenWidth(5)),
                                child: Text(
                                  'app එක  කිරීමේදී මතුවන ගැටළු පහත අංකයට whatsapp ඔස්සේ අප වෙත එවන්න.අපගේ කණ්ඩායම ඔබේ ගැටළුව විසදා දෙවි. (070 10 850 33)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: getProportionateScreenWidth(15),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Divider(),
                              // Divider(),
                              // Container(
                              //   color: kPrimaryColor,
                              //   padding:
                              //       EdgeInsets.all(getProportionateScreenWidth(5)),
                              //   child: Text(
                              //     '1. app 1 මඟින් day එකක් active කිරීමට නොහැකිව පහත අකාරයේ message එකක් පැමිණියේ නම් ',
                              //     style: TextStyle(
                              //       fontWeight: FontWeight.bold,
                              //       fontSize: getProportionateScreenWidth(15),
                              //       color: Colors.white,
                              //     ),
                              //   ),
                              // ),
                              // Divider(),
                              // Image.asset(
                              //   'assets/images/problems_1_1.jpeg',
                              //   fit: BoxFit.fitHeight,
                              //   height: getProportionateScreenHeight(140),
                              //   width: double.infinity,
                              // ),
                              // SizedBox(
                              //   height: getProportionateScreenHeight(14),
                              // ),
                              // Text(
                              //   'ඔබ සිටින ප්‍රදේශය තුල ඇති signal ගැටළු නිසා මේ ගැටළුව පැමිණේ.පහත පියවර අනුගමනය කරන්න.',
                              //   style: TextStyle(
                              //     fontSize: getProportionateScreenWidth(15),
                              //     color: Colors.black,
                              //   ),
                              // ),
                              // Text(
                              //   'පියවර 01',
                              //   style: TextStyle(
                              //     fontWeight: FontWeight.bold,
                              //     fontSize: getProportionateScreenWidth(15),
                              //     color: Colors.black,
                              //   ),
                              // ),
                              // Text(
                              //   'පළමුව මෙම සේවාවෙන් unsubscribe වන්න. ඒ සඳහා ඔබ subscribe වීමේදී ලබා දුන් දුරකථන අංකයෙන් unreg mrenglish ලෙස type කර 77177 ට message එකක් දමන්න. ',
                              //   style: TextStyle(
                              //     fontSize: getProportionateScreenWidth(15),
                              //     color: Colors.black,
                              //   ),
                              // ),
                              // //  Image.asset(
                              // //   mcqQ[_qIndex].imageUrl,
                              // //   fit: BoxFit.fitHeight,
                              // //   height: getProportionateScreenHeight(140),
                              // //   width: double.infinity,
                              // // ),
                              // Text(
                              //   'පියවර 02',
                              //   style: TextStyle(
                              //     fontWeight: FontWeight.bold,
                              //     fontSize: getProportionateScreenWidth(15),
                              //     color: Colors.black,
                              //   ),
                              // ),
                              // Text(
                              //   'දැන් ප්‍රධාන screen වෙත ගොස් එහි වම් පැත්තේ උද කෙලවරේ ඇති menu button 1 (ඉරි ලකුණු තුන) මත click කර එම menu එකේ පහළ ඇති logout මත click කරන්න.',
                              //   style: TextStyle(
                              //     fontSize: getProportionateScreenWidth(15),
                              //     color: Colors.black,
                              //   ),
                              // ),
                              // Image.asset(
                              //   'assets/images/problems_1_2.jpeg',
                              //   fit: BoxFit.fitHeight,
                              //   height: getProportionateScreenHeight(350),
                              //   width: double.infinity,
                              // ),
                              // Image.asset(
                              //   'assets/images/problems_1_3.jpeg',
                              //   fit: BoxFit.fitHeight,
                              //   height: getProportionateScreenHeight(350),
                              //   width: double.infinity,
                              // ),
                              // Text(
                              //   'පියවර 03',
                              //   style: TextStyle(
                              //     fontWeight: FontWeight.bold,
                              //     fontSize: getProportionateScreenWidth(15),
                              //     color: Colors.black,
                              //   ),
                              // ),
                              // Text(
                              //   'ඉන්පසු යලිත් ඔබේ ජාතික හැඳුනුම්පත් අංකය හා password එක ඇතුලත් කර login මත click කරන්න.',
                              //   style: TextStyle(
                              //     fontSize: getProportionateScreenWidth(15),
                              //     color: Colors.black,
                              //   ),
                              // ),
                              // Image.asset(
                              //   'assets/images/problems_1_4.jpeg',
                              //   fit: BoxFit.fitHeight,
                              //   height: getProportionateScreenHeight(350),
                              //   width: double.infinity,
                              // ),
                              // Text(
                              //   'පියවර 04',
                              //   style: TextStyle(
                              //     fontWeight: FontWeight.bold,
                              //     fontSize: getProportionateScreenWidth(15),
                              //     color: Colors.black,
                              //   ),
                              // ),
                              // Text(
                              //   'ඔබ කළින් අනුගමනය කළ පියවර අනුගමනය කරමින් දැන් යළිත් සේවාවට subscribe කරන්න.',
                              //   style: TextStyle(
                              //     fontSize: getProportionateScreenWidth(15),
                              //     color: Colors.black,
                              //   ),
                              // ),
                              // Text(
                              //   'පියවර 05',
                              //   style: TextStyle(
                              //     fontWeight: FontWeight.bold,
                              //     fontSize: getProportionateScreenWidth(15),
                              //     color: Colors.black,
                              //   ),
                              // ),
                              // Text(
                              //   'ඔබේ ගැටළුව තවමත් පවතීනම් පැය කිහිපයකින් නැවත ඉහත පියවර අනුගමනය කරන්න.දැන් යළිත් සේවාවට subscribe කරන්න.',
                              //   style: TextStyle(
                              //     fontSize: getProportionateScreenWidth(15),
                              //     color: Colors.black,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      )
                  ]),
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

  Container buildBigCard(String title1, String title2, String value) {
    return Container(
      margin: EdgeInsets.only(
          top: getProportionateScreenHeight(20),
          right: getProportionateScreenHeight(10),
          left: getProportionateScreenHeight(10)),
      height: getProportionateScreenHeight(200),
      width: getProportionateScreenWidth(150),
      child: Card(
        elevation: 6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title1,
              style: TextStyle(fontSize: getProportionateScreenHeight(17)),
            ),
            Text(
              title2,
              style: TextStyle(fontSize: getProportionateScreenHeight(17)),
            ),
            Text(
              value,
              style: TextStyle(fontSize: getProportionateScreenHeight(40)),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDetailsCard(String title, String name) {
    return Container(
      margin: EdgeInsets.only(
        top: getProportionateScreenHeight(10),
      ),
      width: getProportionateScreenWidth(300),
      child: Card(
        elevation: 6,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: kPrimaryColor,
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(17),
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(17),
                  color: kPrimaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
