// import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

// import 'dart:html';
// import 'dart:io';
import 'dart:convert';
import 'dart:io';

import 'package:mr_english/providers/auth.dart';
import 'package:mr_english/providers/day.dart';
import 'package:mr_english/providers/days.dart';
import 'package:mr_english/providers/lessons.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../widgets/button_widget.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';
import '../size_config.dart';
import 'package:flutter/material.dart';

class SampleEssayQuestionScreen extends StatefulWidget {
  static const routeName = '/sample-essay-question';

  @override
  _SampleEssayQuestionScreenState createState() =>
      _SampleEssayQuestionScreenState();
}

class _SampleEssayQuestionScreenState extends State<SampleEssayQuestionScreen> {
  // PDFDocument _doc;
  bool _isLoading;
  List<String> qUrls = [];

  var _qIndex = 0;
  bool loaded = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      _isLoading = true;
    });
    // final doc = await PDFDocument.fromURL(url);
    setState(() {
      // _doc = doc;
      _isLoading = false;
    });
  }

  final appBar = AppBar(
    title: Text(
      'Sample Essay Questions',
      style: TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
        fontSize: getProportionateScreenHeight(17),
      ),
      textAlign: TextAlign.center,
    ),
  );

  void _clickNext() {
    setState(() {
      _qIndex = _qIndex + 1;
    });
  }

  Future<void> updateDatabase(Day loadedDay, double mark, int index) async {
    double totalDayMark = loadedDay.totalMark;

    setState(() {
      _isLoading = true;
    });
    if (index == 1) {
      if (loadedDay.lesson1Mark == 0) {
        totalDayMark = totalDayMark + mark;
      } else {
        totalDayMark = totalDayMark - loadedDay.lesson1Mark + mark;
      }

      Provider.of<Days>(context, listen: false).findByDetailsIdAndUpdateL1(
          loadedDay.dayDetailsId, mark, totalDayMark);

      Provider.of<Auth>(context, listen: false).updateMark(totalDayMark);

      if (loadedDay.noOfLessons == 1) {
        if (!loadedDay.isCompletedDay) {
          Provider.of<Auth>(context, listen: false).updateCD();
          Provider.of<Days>(context, listen: false)
              .findByDetailsIdAndUpdateCDay(loadedDay.dayDetailsId);
        }
      } else if (loadedDay.noOfLessons == 2 && loadedDay.isCompletedLesson2) {
        if (!loadedDay.isCompletedDay) {
          Provider.of<Auth>(context, listen: false).updateCD();
          Provider.of<Days>(context, listen: false)
              .findByDetailsIdAndUpdateCDay(loadedDay.dayDetailsId);
        }
      } else if (loadedDay.noOfLessons == 3 &&
          loadedDay.isCompletedLesson2 &&
          loadedDay.isCompletedLesson3) {
        if (!loadedDay.isCompletedDay) {
          Provider.of<Auth>(context, listen: false).updateCD();
          Provider.of<Days>(context, listen: false)
              .findByDetailsIdAndUpdateCDay(loadedDay.dayDetailsId);
        }
      }
      await Provider.of<Auth>(context, listen: false).getMe();

      final url1 =
          'https://mrenglish.tk/api/v1/dayDetails/${loadedDay.dayDetailsId}';
      final url2 = 'https://mrenglish.tk/api/v1/auth/updateDetails';

      try {
        await http.put(
          Uri.parse(url1),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: "Bearer ${loadedDay.authToken}",
          },
          body: jsonEncode(
            {
              'totalMark': loadedDay.totalMark,
              'isCompletedLesson1': loadedDay.isCompletedLesson1,
              'lesson1Mark': loadedDay.lesson1Mark,
              'isCompletedDay': loadedDay.isCompletedDay
            },
          ),
        );
        var noOfCompletedDays =
            Provider.of<Auth>(context, listen: false).noOfFinishedLessons;

        await http.put(
          Uri.parse(url2),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: "Bearer ${loadedDay.authToken}",
          },
          body: jsonEncode(
            {
              'mark': loadedDay.totalMark * 2,
              'noOfFinishedLessons': noOfCompletedDays
            },
          ),
        );
      } catch (error) {
        print(error);
        throw (error);
      }
      Provider.of<Auth>(context, listen: false).getMe();
    } else if (index == 2) {
      if (loadedDay.lesson2Mark == 0) {
        totalDayMark = totalDayMark + mark;
      } else {
        totalDayMark = totalDayMark - loadedDay.lesson2Mark + mark;
      }

      Provider.of<Days>(context, listen: false).findByDetailsIdAndUpdateL2(
          loadedDay.dayDetailsId, mark, totalDayMark);

      Provider.of<Auth>(context, listen: false).updateMark(totalDayMark);

      if (loadedDay.noOfLessons == 2 && loadedDay.isCompletedLesson1) {
        if (!loadedDay.isCompletedDay) {
          Provider.of<Auth>(context, listen: false).updateCD();
          Provider.of<Days>(context, listen: false)
              .findByDetailsIdAndUpdateCDay(loadedDay.dayDetailsId);
        }
      } else if (loadedDay.noOfLessons == 3 &&
          loadedDay.isCompletedLesson1 &&
          loadedDay.isCompletedLesson3) {
        if (!loadedDay.isCompletedDay) {
          Provider.of<Auth>(context, listen: false).updateCD();
          Provider.of<Days>(context, listen: false)
              .findByDetailsIdAndUpdateCDay(loadedDay.dayDetailsId);
        }
      }
      await Provider.of<Auth>(context, listen: false).getMe();

      final url1 =
          'https://mrenglish.tk/api/v1/dayDetails/${loadedDay.dayDetailsId}';
      final url2 = 'https://mrenglish.tk/api/v1/auth/updateDetails';

      try {
        await http.put(
          Uri.parse(url1),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: "Bearer ${loadedDay.authToken}",
          },
          body: jsonEncode(
            {
              'totalMark': loadedDay.totalMark,
              'isCompletedLesson2': loadedDay.isCompletedLesson2,
              'lesson2Mark': loadedDay.lesson2Mark,
              'isCompletedDay': loadedDay.isCompletedDay
            },
          ),
        );

        var noOfCompletedDays =
            Provider.of<Auth>(context, listen: false).noOfFinishedLessons;

        await http.put(
          Uri.parse(url2),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: "Bearer ${loadedDay.authToken}",
          },
          body: jsonEncode(
            {
              'mark': loadedDay.totalMark * 2,
              'noOfFinishedLessons': noOfCompletedDays
            },
          ),
        );
      } catch (error) {
        print(error);
        throw (error);
      }

      Provider.of<Auth>(context, listen: false).getMe();
    } else if (index == 3) {
      if (loadedDay.lesson3Mark == 0) {
        totalDayMark = totalDayMark + mark;
      } else {
        totalDayMark = totalDayMark - loadedDay.lesson3Mark + mark;
      }

      Provider.of<Days>(context, listen: false).findByDetailsIdAndUpdateL3(
          loadedDay.dayDetailsId, mark, totalDayMark);

      Provider.of<Auth>(context, listen: false).updateMark(totalDayMark);

      if (loadedDay.noOfLessons == 3 &&
          loadedDay.isCompletedLesson1 &&
          loadedDay.isCompletedLesson2) {
        if (!loadedDay.isCompletedDay) {
          Provider.of<Auth>(context, listen: false).updateCD();
          Provider.of<Days>(context, listen: false)
              .findByDetailsIdAndUpdateCDay(loadedDay.dayDetailsId);
        }
      }
      await Provider.of<Auth>(context, listen: false).getMe();

      final url1 =
          'https://mrenglish.tk/api/v1/dayDetails/${loadedDay.dayDetailsId}';
      final url2 = 'https://mrenglish.tk/api/v1/auth/updateDetails';

      try {
        await http.put(
          Uri.parse(url1),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: "Bearer ${loadedDay.authToken}",
          },
          body: jsonEncode(
            {
              'totalMark': loadedDay.totalMark,
              'isCompletedLesson3': loadedDay.isCompletedLesson3,
              'lesson3Mark': loadedDay.lesson3Mark,
              'isCompletedDay': loadedDay.isCompletedDay
            },
          ),
        );

        var noOfCompletedDays =
            Provider.of<Auth>(context, listen: false).noOfFinishedLessons;

        await http.put(
          Uri.parse(url2),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: "Bearer ${loadedDay.authToken}",
          },
          body: jsonEncode(
            {
              'mark': loadedDay.totalMark * 2,
              'noOfFinishedLessons': noOfCompletedDays
            },
          ),
        );
      } catch (error) {
        print(error);
        throw (error);
      }
      Provider.of<Auth>(context, listen: false).getMe();
    }
    Navigator.of(context).pop();
    // Navigator.of(context)
    // .pushNamed(DayDetailsScreen.routeName, arguments: dayId[0]);
  }

  @override
  Widget build(BuildContext context) {
    final dayId = ModalRoute.of(context).settings.arguments as List;
    final loadedLesson =
        Provider.of<Lessons>(context, listen: false).findByID(dayId[1]);
    final height = MediaQuery.of(context).size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    final loadedDay =
        Provider.of<Days>(context, listen: false).findByID(dayId[0]);

    if (loaded) {
      loadedLesson.mcqLesson.forEach((element) {
        qUrls.add(element);
      });

      loaded = false;
    }

    print(qUrls.length);

    return Scaffold(
        appBar: appBar,
        body: _isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                child: _qIndex < qUrls.length
                    ? SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: height * 0.9,
                              child: SfPdfViewer.network(qUrls[_qIndex]),
                            ),
                            RaisedButton(
                              color: kPrimaryColor,
                              onPressed: _clickNext,
                              child: Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                padding: EdgeInsets.all(
                                    getProportionateScreenHeight(14)),
                                child: Text(
                                  'මීළඟ ප්‍රශ්නය',
                                  style: TextStyle(
                                    fontSize: getProportionateScreenHeight(18),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'You get 100% for the given paper. The lesson is over.',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'ඔබ paper 1 සඳහා 100% ලකුණු ප්‍රමාණයක් ලබාගෙන ඇත. පාඩම අවසානයි.',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(18),
                          ),
                          RaisedButton(
                            color: kPrimaryColor,
                            onPressed: () {
                              updateDatabase(loadedDay, 1, dayId[2]);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              padding: EdgeInsets.all(
                                  getProportionateScreenHeight(14)),
                              child: Text(
                                'ok Sir',
                                style: TextStyle(
                                  fontSize: getProportionateScreenHeight(18),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
              ));
  }
}
