import 'dart:ui';

import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:mr_english/providers/chapter.dart';
import 'package:mr_english/providers/seminar.dart';
import 'package:mr_english/screens/seminar_screen.dart';

import '../constants.dart';
import '../screens/paper_screen.dart';
import '../screens/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/year.dart';
import '../size_config.dart';

class ChapterItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String subTitle;
  // final int mark;
  // final String imageUrl;
  // final bool isCompleted;

  // DayItem(this.id, this.title, this.subTitle, this.mark, this.imageUrl,this.isCompleted);

  @override
  Widget build(BuildContext context) {
    final chapter = Provider.of<Chapter>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(getProportionateScreenHeight(10)),
      child: GestureDetector(
        onTap: () {
          chapter.isActive
              ? Navigator.of(context).pushNamed(
                  SeminarScreen.routeName,
                  arguments: [chapter.title, chapter.videoList],
                )
              : Navigator.of(context).popAndPushNamed(
                  PaymentScreen.routeName,
                  arguments: [chapter.id, 'chapter'],
                );
        },
        child: Container(
          margin: EdgeInsets.only(right: 5, left: 5),
          // height: getProportionateScreenWidth(250),
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor),
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(5)),
              ),
              width: double.infinity,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: kPrimaryColor,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.all(
                                    getProportionateScreenWidth(5)),
                                margin: EdgeInsets.all(
                                    getProportionateScreenHeight(7)),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle),
                                child: Text(
                                  chapter.chapterNo.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          getProportionateScreenHeight(20)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                color: kPrimaryColor,
                                padding: EdgeInsets.only(
                                    right: 5, left: 5, bottom: 3, top: 3),
                                child: Column(
                                  children: [
                                    Text(
                                      chapter.title,
                                      style: TextStyle(color: Colors.white),
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      '( Rs. ${chapter.amount} + tax )',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            chapter.isActive
                                ? Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.all(
                                          getProportionateScreenHeight(7)),
                                      padding: EdgeInsets.all(
                                          getProportionateScreenHeight(7)),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle
                                          // gradient: LinearGradient(
                                          //     begin: Alignment.centerLeft,
                                          //     end: Alignment.centerRight,
                                          //     colors: [
                                          //       Color(Random().nextInt(0xffffffff)),
                                          //       Color(Random().nextInt(0xffffffff))
                                          //     ]),
                                          ),
                                      child: Icon(
                                        Icons.lock_open_outlined,
                                        size: getProportionateScreenWidth(25),
                                        color: Colors.green,
                                      ),
                                    ),
                                  )
                                : Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.all(
                                          getProportionateScreenHeight(7)),
                                      padding: EdgeInsets.all(
                                          getProportionateScreenHeight(7)),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle
                                          // gradient: LinearGradient(
                                          //     begin: Alignment.centerLeft,
                                          //     end: Alignment.centerRight,
                                          //     colors: [
                                          //       Color(Random().nextInt(0xffffffff)),
                                          //       Color(Random().nextInt(0xffffffff))
                                          //     ]),
                                          ),
                                      child: Icon(
                                        Icons.lock_outlined,
                                        size: getProportionateScreenWidth(25),
                                        color: Colors.red,
                                      ),
                                    ),
                                  )
                          ],
                        ),
                      ),
                    ),
                    // Divider(
                    //   color: kPrimaryColor,
                    // ),
                    Expanded(
                        flex: 7,
                        child: Container(
                          width: infinity.toDouble(),
                          padding:
                              EdgeInsets.only(right: 5, left: 15, bottom: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...(chapter.points as List).map(
                                (point) {
                                  return Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: getProportionateScreenWidth(15),
                                        color: Colors.green,
                                      ),
                                      Text(
                                        point,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  );
                                },
                              ).toList(),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
            elevation: 5,
          ),
        ),
      ),
    );
  }
}
