import 'dart:convert';
import 'dart:io';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
import 'classes_screen.dart';
import 'instructions_screen.dart';
import 'notification_screeen.dart';
import 'presentation_skills_overview_screen.dart';
import 'seminars_overview_screen.dart';

class Course01DetailsScreen extends StatefulWidget {
  static const String routeName = '/course01-details';

  @override
  _Course01DetailsScreenState createState() => _Course01DetailsScreenState();
}

class _Course01DetailsScreenState extends State<Course01DetailsScreen> {
  var _isInit = true;
  var _isLoading = false;

  @override
  void initState() {
    super.initState();
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

  Future<void> joinClassButton(String navigation, String title) async {
    print(title);
    if (title == 'O/L Paper Discussion' ||
        title == 'Basic English within 40 Days' ||
        title == 'Seminars' ||
        title == 'Presentation Skills')
      Navigator.of(context).popAndPushNamed(navigation, arguments: title);
    else {
      Navigator.of(context).pop();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ClassesScreen(title)),
      );
    }
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
                        joinClassButton(navigation, title);
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
                              title,
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
    final loadedCourse = ModalRoute.of(context).settings.arguments as List;
    final title = loadedCourse[0];
    final description = loadedCourse[1];
    final uTubeUrl = loadedCourse[2];
    String navigationScreen;
    var isSubscribed = Provider.of<Auth>(context, listen: true).isSubscribed;
    var serviceProvider =
        Provider.of<Auth>(context, listen: true).serviceProvider;
    List<String> details = [];
    String type = ' ';
    String course = ' ';
    String date = ' ';
    if (serviceProvider != 'Dialog' &&
        serviceProvider != 'Mobitel' &&
        isSubscribed) {
      details = serviceProvider.split(" ");

      course = details[0];
      date = details[1];

      bool isActive = false;
      var now = new DateTime.now();
      var parsedDate = DateTime.parse(date);

      if (now.isBefore(parsedDate)) {
        isActive = true;
      }

      if ((course == '1' ||
              course == '12' ||
              course == '13' ||
              course == '123') &&
          title == 'Basic English within 40 Days' &&
          isActive)
        isSubscribed = true;
      else if ((course == '2' ||
              course == '12' ||
              course == '23' ||
              course == '123') &&
          title == 'O/L Paper Discussion' &&
          isActive)
        isSubscribed = true;
      else if ((course == '3' ||
              course == '13' ||
              course == '23' ||
              course == '123') &&
          title == 'Presentation Skills' &&
          isActive)
        isSubscribed = true;
      else
        isSubscribed = false;
    }

    final token = Provider.of<Auth>(context, listen: false).token;
    String url;
    if (title == 'O/L Paper Discussion') {
      navigationScreen = YearsOverviewScreen.routeName;
      url = 'KeQPyg_t0ks';
    } else if (title == 'Basic English within 40 Days') {
      navigationScreen = DaysOverviewScreen.routeName;
      url = 'y5Ss7N3J5bo';
    } else if (title == 'Seminars') {
      navigationScreen = SeminarsOverviewScreen.routeName;
      url = 'u52UL2QAlvI';
    } else if (title == 'Presentation Skills') {
      navigationScreen = PresentationSkillsOverviewScreen.routeName;
      url = 'u52UL2QAlvI';
    } else {
      navigationScreen = ClassesScreen.routeName;
      url = 'J3Q20vZkJzI';
    }

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: url,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        forceHD: false,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(20),
          ),
        ),
      ),
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
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding:
                            EdgeInsets.all(getProportionateScreenWidth(20)),
                        child: YoutubePlayer(
                          controller: _controller,
                          bottomActions: [
                            CurrentPosition(),
                            ProgressBar(isExpanded: true),
                            PlayPauseButton(),
                            // FullScreenButton(),
                          ],
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.redAccent,
                        ),
                      ),
                      buildLessonCard(
                        title,
                        description,
                        navigationScreen,
                        isSubscribed,
                        token,
                        'assets/images/englishGrammerIcon.jpeg',
                      ),
                    ]),
              ),
            ),
    );
  }
}
