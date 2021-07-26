import 'dart:convert';

import 'dart:io';
import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mr_english/providers/classStudents.dart';
import 'package:mr_english/screens/add_student_screen.dart';
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
  var _isInit = true;
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  FlutterLocalNotificationsPlugin fltNotification;
  var _isLoading = false;
  var _page = 'Our Courses';

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
          setState(() {
            _isLoading = false;
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

  Widget buildCircle(String page, double height) {
    var iconStyle;
    if (page == 'Our Courses')
      iconStyle = Icons.library_books;
    else if (page == 'උපදෙස්')
      iconStyle = Icons.support_agent_outlined;
    else if (page == 'My Profile')
      iconStyle = Icons.people_outline;
    else if (page == 'ගැටළු') iconStyle = Icons.help;
    return Column(
      children: [
        Text(page),
        Container(
          width: getProportionateScreenWidth(height * .08),
          height: getProportionateScreenWidth(height * .08),
          decoration: new BoxDecoration(
            color: kPrimaryColor,
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(height * .001),
          margin: EdgeInsets.all(height * .001),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _page = page;
              });
            },
            child: Icon(
              iconStyle,
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
    final token = Provider.of<Auth>(context, listen: false).token;

    final height = MediaQuery.of(context).size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    YoutubePlayerController _controller1 = YoutubePlayerController(
      initialVideoId: 'w8LfuX4BrOY',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    YoutubePlayerController _controller2 = YoutubePlayerController(
      initialVideoId: 'OD69bEBZzRU',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    YoutubePlayerController _controller3 = YoutubePlayerController(
      initialVideoId: 'Sa_4Ruu8cUM',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    YoutubePlayerController _controller4 = YoutubePlayerController(
      initialVideoId: 'sEvTMwq9_i4',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    YoutubePlayerController _controller5 = YoutubePlayerController(
      initialVideoId: '4mMNb7_-PNQ',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
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
              onRefresh: () => _refreshCourses(context, nicNo),
              child: Column(children: <Widget>[
                Container(
                    height: height * .25,
                    width: double.infinity,
                    decoration: new BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Hi...........',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: height * .05,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Have a nice day!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: height * .05,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
                Container(
                  height: height * .15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildCircle('Our Courses', height),
                      buildCircle('උපදෙස්', height),
                      buildCircle('My Profile', height),
                      buildCircle('ගැටළු', height),
                    ],
                  ),
                ),
                if (_page == 'Our Courses')
                  Container(
                    height: height * .6,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            'ලබා ගත හැකි පාඨමාලා',
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(15),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
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
                          if (nicNo == '951062219v' || nicNo == '881770644v')
                            buildAddStudentCard(),
                        ],
                      ),
                    ),
                  )
                else if (_page == 'උපදෙස්')
                  Container(
                    height: height * .6,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: SingleChildScrollView(
                            child: Column(children: <Widget>[
                              Text(
                                'App 1 භාවිතා කිරීමට පෙර පහත උපදෙස් හොදින් බලන්න.',
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(17),
                                  color: Colors.black,
                                ),
                              ),
                              Divider(),
                              Text(
                                'App 1 install කරගන්නේ කොහොමද?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: getProportionateScreenWidth(15),
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Divider(),
                              YoutubePlayer(
                                controller: _controller1,
                                bottomActions: [
                                  CurrentPosition(),
                                  ProgressBar(isExpanded: true),
                                  PlayPauseButton(),
                                  // FullScreenButton(),
                                ],
                                showVideoProgressIndicator: true,
                                progressIndicatorColor: Colors.redAccent,
                              ),
                              Divider(),
                              Text(
                                'App 1ට register වන්නේ කොහොමද?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: getProportionateScreenWidth(15),
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Divider(),
                              YoutubePlayer(
                                controller: _controller2,
                                bottomActions: [
                                  CurrentPosition(),
                                  ProgressBar(isExpanded: true),
                                  PlayPauseButton(),
                                  // FullScreenButton(),
                                ],
                                showVideoProgressIndicator: true,
                                progressIndicatorColor: Colors.redAccent,
                              ),
                              Divider(),
                              Text(
                                'App 1 subscribe කරන්නේ කොහොමද?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: getProportionateScreenWidth(15),
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Divider(),
                              YoutubePlayer(
                                controller: _controller3,
                                bottomActions: [
                                  CurrentPosition(),
                                  ProgressBar(isExpanded: true),
                                  PlayPauseButton(),
                                  // FullScreenButton(),
                                ],
                                showVideoProgressIndicator: true,
                                progressIndicatorColor: Colors.redAccent,
                              ),
                              Divider(),
                              Text(
                                'Past paper course 1 follow කරන්නේ කොහොමද?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: getProportionateScreenWidth(15),
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Divider(),
                              YoutubePlayer(
                                controller: _controller4,
                                bottomActions: [
                                  CurrentPosition(),
                                  ProgressBar(isExpanded: true),
                                  PlayPauseButton(),
                                  // FullScreenButton(),
                                ],
                                showVideoProgressIndicator: true,
                                progressIndicatorColor: Colors.redAccent,
                              ),
                              Divider(),
                              Text(
                                'Basic English course 1 follow කරන්නේ කොහොමද?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: getProportionateScreenWidth(15),
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Divider(),
                              YoutubePlayer(
                                controller: _controller5,
                                bottomActions: [
                                  CurrentPosition(),
                                  ProgressBar(isExpanded: true),
                                  PlayPauseButton(),
                                  // FullScreenButton(),
                                ],
                                showVideoProgressIndicator: true,
                                progressIndicatorColor: Colors.redAccent,
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                  )
                else if (_page == 'My Profile')
                  Container(
                    height: height * .6,
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
                                    right: getProportionateScreenHeight(10)),
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
                else if (_page == 'ගැටළු')
                  Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                    height: height * .6,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            'App 1 භාවිතා කරන විට ඔබට පැමිණි ගැටළුව',
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(17),
                              color: Colors.black,
                            ),
                          ),
                          Divider(),
                          Container(
                            color: Colors.green,
                            padding:
                                EdgeInsets.all(getProportionateScreenWidth(5)),
                            child: Text(
                              'app එක  කිරීමේදී මතුවන ගැටළු පහත පියවර අනුගමනය කරමින් විසදා ගන්න. එකේ නොහැකිනම් පහත අංකයට whatsapp ඔස්සේ අප වෙත එවන්න.අපගේ කණ්ඩායම ඔබේ ගැටළුව විසදා දෙවි. (070 10 850 33)',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: getProportionateScreenWidth(15),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Divider(),
                          Divider(),
                          Container(
                            color: kPrimaryColor,
                            padding:
                                EdgeInsets.all(getProportionateScreenWidth(5)),
                            child: Text(
                              '1. app 1 මඟින් day එකක් active කිරීමට නොහැකිව පහත අකාරයේ message එකක් පැමිණියේ නම් ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: getProportionateScreenWidth(15),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Divider(),
                          Image.asset(
                            'assets/images/problems_1_1.jpeg',
                            fit: BoxFit.fitHeight,
                            height: getProportionateScreenHeight(140),
                            width: double.infinity,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(14),
                          ),
                          Text(
                            'ඔබ සිටින ප්‍රදේශය තුල ඇති signal ගැටළු නිසා මේ ගැටළුව පැමිණේ.පහත පියවර අනුගමනය කරන්න.',
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'පියවර 01',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'පළමුව මෙම සේවාවෙන් unsubscribe වන්න. ඒ සඳහා ඔබ subscribe වීමේදී ලබා දුන් දුරකථන අංකයෙන් unreg mrenglish ලෙස type කර 77177 ට message එකක් දමන්න. ',
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.black,
                            ),
                          ),
                          //  Image.asset(
                          //   mcqQ[_qIndex].imageUrl,
                          //   fit: BoxFit.fitHeight,
                          //   height: getProportionateScreenHeight(140),
                          //   width: double.infinity,
                          // ),
                          Text(
                            'පියවර 02',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'දැන් ප්‍රධාන screen වෙත ගොස් එහි වම් පැත්තේ උද කෙලවරේ ඇති menu button 1 (ඉරි ලකුණු තුන) මත click කර එම menu එකේ පහළ ඇති logout මත click කරන්න.',
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.black,
                            ),
                          ),
                          Image.asset(
                            'assets/images/problems_1_2.jpeg',
                            fit: BoxFit.fitHeight,
                            height: getProportionateScreenHeight(350),
                            width: double.infinity,
                          ),
                          Image.asset(
                            'assets/images/problems_1_3.jpeg',
                            fit: BoxFit.fitHeight,
                            height: getProportionateScreenHeight(350),
                            width: double.infinity,
                          ),
                          Text(
                            'පියවර 03',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'ඉන්පසු යලිත් ඔබේ ජාතික හැඳුනුම්පත් අංකය හා password එක ඇතුලත් කර login මත click කරන්න.',
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.black,
                            ),
                          ),
                          Image.asset(
                            'assets/images/problems_1_4.jpeg',
                            fit: BoxFit.fitHeight,
                            height: getProportionateScreenHeight(350),
                            width: double.infinity,
                          ),
                          Text(
                            'පියවර 04',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'ඔබ කළින් අනුගමනය කළ පියවර අනුගමනය කරමින් දැන් යළිත් සේවාවට subscribe කරන්න.',
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'පියවර 05',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'ඔබේ ගැටළුව තවමත් පවතීනම් පැය කිහිපයකින් නැවත ඉහත පියවර අනුගමනය කරන්න.දැන් යළිත් සේවාවට subscribe කරන්න.',
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.black,
                            ),
                          ),
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
