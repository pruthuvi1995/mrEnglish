import 'dart:convert';
import 'dart:io';
import 'dart:math';

import '../size_config.dart';

import '../providers/day.dart';
import '../providers/days.dart';
import '../providers/auth.dart';
import '../providers/lessons.dart';
import '../screens/day_details_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';
import './answer.dart';
import '../widgets/question.dart';
import '../widgets/review.dart';
import '../providers/mcq.dart';

class McqPaper extends StatefulWidget {
  final String navigatingPage;
  final String type;
  final List dayId;

  McqPaper(this.navigatingPage, this.type, this.dayId);

  @override
  _McqPaperState createState() => _McqPaperState(navigatingPage, type, dayId);
}

class _McqPaperState extends State<McqPaper> {
  final String navigatingPage;
  final String type;
  final List dayId;
  double totalMark = 0;
  var _isLoading = false;

  _McqPaperState(this.navigatingPage, this.type, this.dayId);
  List<Mcq> mcqQ = [];

  var _qIndex = 0;
  var _showAnswer = false;

  bool loaded = true;

  void _clickNext() {
    setState(() {
      print(_qIndex);
      _qIndex = _qIndex + 1;
      _showAnswer = false;
    });
  }

  double roundDouble(double value, int places) {
    double mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  void _clickAnswer(String answerText) {
    if (_showAnswer) {
      return;
    } else {
      setState(() {
        _showAnswer = true;
        mcqQ[_qIndex].givenAnswer = answerText;
      });
    }
  }

  bool isCorrect() {
    if (mcqQ[_qIndex].givenAnswer == mcqQ[_qIndex].correctAnswer) {
      totalMark = totalMark + mcqQ[_qIndex].mark;

      return true;
    } else {
      return false;
    }
  }

  Future<void> updateDatabase(Day loadedDay, double mark, int index) async {
    double totalDayMark = loadedDay.totalMark;
    mark = roundDouble(mark, 2);

    setState(() {
      _isLoading = true;
    });
    if (index == 1) {
      if (loadedDay.lesson1Mark == 0) {
        totalDayMark = totalDayMark + mark;
      } else {
        totalDayMark = totalDayMark - loadedDay.lesson1Mark + mark;
      }
      totalDayMark = roundDouble(totalDayMark, 2);

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
      totalDayMark = roundDouble(totalDayMark, 2);

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
      totalDayMark = roundDouble(totalDayMark, 2);

      Provider.of<Days>(context, listen: false)
          .findByDetailsIdAndUpdateL3(loadedDay.dayDetailsId, mark, totalMark);

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
    final loadedLesson =
        Provider.of<Lessons>(context, listen: false).findByID(dayId[1]);
    final loadedDay =
        Provider.of<Days>(context, listen: false).findByID(dayId[0]);

    if (type == 'trail' && loaded) {
      loadedLesson.mcqTrail.forEach((element) {
        mcqQ.add(Mcq(
          type: element['type'],
          qText: element['qText'],
          imageUrl: element['imageUrl'],
          answers: element['answers'],
          correctAnswer: element['correctAnswer'],
          review: element['review'],
          mark: element['mark'],
        ));
      });
      loaded = false;
    } else if (type == 'lesson' && loaded) {
      loadedLesson.mcqLesson.forEach((element) {
        mcqQ.add(Mcq(
          type: element['type'],
          qText: element['qText'],
          imageUrl: element['imageUrl'],
          answers: element['answers'],
          correctAnswer: element['correctAnswer'],
          review: element['review'],
          mark: element['mark'],
        ));
      });
      loaded = false;
    }

    return _qIndex < mcqQ.length
        ? Container(
            padding: EdgeInsets.all(getProportionateScreenHeight(9)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        mcqQ[_qIndex].imageUrl,
                        fit: BoxFit.fitHeight,
                        height: getProportionateScreenHeight(140),
                        width: double.infinity,
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(14),
                      ),
                      Container(
                        height: getProportionateScreenHeight(430),
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              _showAnswer
                                  ? Review(
                                      isCorrect(),
                                      mcqQ[_qIndex].correctAnswer,
                                      mcqQ[_qIndex].review,
                                      mcqQ[_qIndex].givenAnswer,
                                    )
                                  : Container(
                                      child: mcqQ[_qIndex].type == 'TF'
                                          ? Text('හරිද වැරදිද යන්න තෝරන්න.')
                                          : Text('නිවැරදි පිළිතුර තෝරන්න.')),
                              Question(mcqQ[_qIndex].qText, mcqQ[_qIndex].type),
                              ...(mcqQ[_qIndex].answers as List).map(
                                (answer) {
                                  return Answer(answer, _clickAnswer);
                                },
                              ).toList()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (_showAnswer)
                  RaisedButton(
                    color: kPrimaryColor,
                    onPressed: _clickNext,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: EdgeInsets.all(getProportionateScreenHeight(14)),
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
        : Container(
            child: _isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        type == 'trail'
                            ? Column(
                                children: [
                                  Text(
                                    'You get ${roundDouble(totalMark, 2) * 100}% for the given trail paper.Let\'s start the lesson.',
                                    style: TextStyle(
                                      fontSize:
                                          getProportionateScreenHeight(18),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    'ඔබ trial paper 1 සඳහා ${roundDouble(totalMark, 2) * 100}% ලකුණු ප්‍රමාණයක් ලබාගෙන ඇත. පාඩම ආරම්භ කරමු.',
                                    style: TextStyle(
                                      fontSize:
                                          getProportionateScreenHeight(18),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  Text(
                                    'You get ${roundDouble(totalMark, 2) * 100}% for the given paper. The lesson is over.',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    'ඔබ paper 1 සඳහා ${roundDouble(totalMark, 2) * 100}% ලකුණු ප්‍රමාණයක් ලබාගෙන ඇත. පාඩම අවසානයි.',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                        SizedBox(
                          height: getProportionateScreenHeight(18),
                        ),
                        RaisedButton(
                          color: kPrimaryColor,
                          onPressed: () {
                            type == 'trail'
                                ? Navigator.of(context).pushReplacementNamed(
                                    navigatingPage,
                                    arguments: dayId)
                                : updateDatabase(loadedDay,
                                    roundDouble(totalMark, 2), dayId[2]);
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
                  ),
          );
  }
}
