import 'dart:math';

import '../providers/lessons.dart';
import './trail_paper_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/days.dart';

import '../size_config.dart';

class DayDetailsScreen extends StatefulWidget {
  static const String routeName = '/day-details';

  @override
  _DayDetailsScreenState createState() => _DayDetailsScreenState();
}

class _DayDetailsScreenState extends State<DayDetailsScreen> {
  var _isInit = true;

  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<Lessons>(context).fetchAndSetLessons().then((_) {
        setState(() {
          _isLoading = false;
        });
      });

      _isInit = false;
    }

    super.didChangeDependencies();
  }

  Future<void> _refreshLessons(BuildContext context) async {
    await Provider.of<Lessons>(context, listen: false).fetchAndSetLessons();
  }

  double roundDouble(double value, int places) {
    double mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  @override
  Widget build(BuildContext context) {
    final dayId = ModalRoute.of(context).settings.arguments as String;
    final loadedDay = Provider.of<Days>(context, listen: false).findByID(dayId);
    final loadedLesson =
        Provider.of<Lessons>(context, listen: false).findByDayID(dayId);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Day ${loadedDay.dayNo}: Details',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(20),
          ),
        ),
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : RefreshIndicator(
              onRefresh: () => _refreshLessons(context),
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  Card(
                    // margin: EdgeInsets.all(getProportionateScreenHeight(10)),
                    child: Column(
                      children: [
                        Text('Overall Performance',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: getProportionateScreenHeight(25),
                                fontWeight: FontWeight.bold)),
                        Padding(
                          padding:
                              EdgeInsets.all(getProportionateScreenHeight(3)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              loadedDay.isCompletedDay
                                  ? Text(
                                      'Completed',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize:
                                              getProportionateScreenHeight(20),
                                          fontWeight: FontWeight.bold),
                                    )
                                  : Text(
                                      'Not Completd',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize:
                                              getProportionateScreenHeight(20),
                                          fontWeight: FontWeight.bold),
                                    ),
                              SizedBox(width: getProportionateScreenHeight(10)),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Total : ',
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(20)),
                                  ),
                                  SizedBox(
                                      width: getProportionateScreenHeight(10)),
                                  Chip(
                                    label: Text(
                                      '${roundDouble(loadedDay.totalMark, 1) * 100}%',
                                      style: TextStyle(
                                          fontSize:
                                              getProportionateScreenHeight(20)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (loadedDay.noOfLessons == 1)
                    InkWell(
                      onTap: () => {},
                      child: buildLessonCard(
                        context,
                        dayId,
                        loadedLesson[0],
                        loadedDay.isCompletedLesson1,
                        roundDouble(loadedDay.lesson1Mark, 2),
                        loadedLesson[0].id,
                        loadedLesson[0].lessonNo,
                        1,
                      ),
                    )
                  else if (loadedDay.noOfLessons == 2)
                    Column(
                      children: [
                        InkWell(
                          onTap: () => {},
                          child: buildLessonCard(
                            context,
                            dayId,
                            loadedLesson[0],
                            loadedDay.isCompletedLesson1,
                            roundDouble(loadedDay.lesson1Mark, 2),
                            loadedLesson[0].id,
                            loadedLesson[0].lessonNo,
                            1,
                          ),
                        ),
                        InkWell(
                          onTap: () => {},
                          child: buildLessonCard(
                            context,
                            dayId,
                            loadedLesson[1],
                            loadedDay.isCompletedLesson2,
                            roundDouble(loadedDay.lesson2Mark, 2),
                            loadedLesson[1].id,
                            loadedLesson[1].lessonNo,
                            2,
                          ),
                        )
                      ],
                    )
                  else if (loadedDay.noOfLessons == 3)
                    Column(
                      children: [
                        InkWell(
                          onTap: () => {},
                          child: buildLessonCard(
                            context,
                            dayId,
                            loadedLesson[0],
                            loadedDay.isCompletedLesson1,
                            roundDouble(loadedDay.lesson1Mark, 2),
                            loadedLesson[0].id,
                            loadedLesson[0].lessonNo,
                            1,
                          ),
                        ),
                        InkWell(
                          onTap: () => {},
                          child: buildLessonCard(
                            context,
                            dayId,
                            loadedLesson[1],
                            loadedDay.isCompletedLesson2,
                            roundDouble(loadedDay.lesson2Mark, 2),
                            loadedLesson[1].id,
                            loadedLesson[1].lessonNo,
                            2,
                          ),
                        ),
                        InkWell(
                          onTap: () => {},
                          child: buildLessonCard(
                            context,
                            dayId,
                            loadedLesson[2],
                            loadedDay.isCompletedLesson3,
                            roundDouble(loadedDay.lesson3Mark, 2),
                            loadedLesson[2].id,
                            loadedLesson[2].lessonNo,
                            3,
                          ),
                        )
                      ],
                    )
                ]),
              ),
            ),
    );
  }

  Card buildLessonCard(
    BuildContext context,
    String dayId,
    lesson,
    bool isCompleted,
    double mark,
    String lessonId,
    String lessonNo,
    int lessonIndex,
  ) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getProportionateScreenHeight(10)),
        ),
        elevation: 4,
        margin: EdgeInsets.all(getProportionateScreenHeight(10)),
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(getProportionateScreenHeight(10)),
                    topRight: Radius.circular(getProportionateScreenHeight(10)),
                  ),
                  child: Image.asset(
                    'assets/images/hasanjana.jpg',
                    fit: BoxFit.cover,
                    height: getProportionateScreenHeight(180),
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  top: getProportionateScreenHeight(20),
                  left: getProportionateScreenHeight(5),
                  right: getProportionateScreenHeight(5),
                  child: Container(
                    height: getProportionateScreenHeight(140),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                    ),
                    padding: EdgeInsets.all(getProportionateScreenHeight(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          lesson.title,
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(18),
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        Divider(
                          height: getProportionateScreenHeight(7),
                          color: Colors.white,
                        ),
                        Text(
                          lesson.description,
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(13),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    alignment: Alignment.center,
                    child: isCompleted
                        ? Text(
                            'Completed',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: getProportionateScreenHeight(17),
                                fontWeight: FontWeight.bold),
                          )
                        : Text(
                            'Not Completd',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: getProportionateScreenHeight(15),
                                fontWeight: FontWeight.bold),
                          ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      print(lessonId);
                      Navigator.of(context).pushNamed(
                        TrailPaperScreen.routeName,
                        arguments: [
                          dayId,
                          lessonId,
                          lessonIndex,
                          lessonNo,
                        ],
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenHeight(15)),
                        color: kPrimaryColor,
                      ),
                      padding: EdgeInsets.all(getProportionateScreenHeight(13)),
                      child: Text(
                        'Start',
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(20),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '${mark * 200} %',
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(18),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
