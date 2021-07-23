import 'dart:ui';

import 'package:mr_english/providers/seminar.dart';
import 'package:mr_english/screens/seminar_screen.dart';

import '../constants.dart';
import '../screens/paper_screen.dart';
import '../screens/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/year.dart';
import '../size_config.dart';

class SeminarItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String subTitle;
  // final int mark;
  // final String imageUrl;
  // final bool isCompleted;

  // DayItem(this.id, this.title, this.subTitle, this.mark, this.imageUrl,this.isCompleted);

  @override
  Widget build(BuildContext context) {
    final seminar = Provider.of<Seminar>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(getProportionateScreenHeight(10)),
      child: GestureDetector(
        onTap: () {
          seminar.isActive
              ? Navigator.of(context).pushNamed(
                  SeminarScreen.routeName,
                  arguments: [seminar.title, seminar.videoList],
                )
              : Navigator.of(context).popAndPushNamed(
                  PaymentScreen.routeName,
                  arguments: [seminar.id, 'seminar'],
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
                      flex: 2,
                      child: Container(
                        color: kPrimaryColor,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Container(
                                color: kPrimaryColor,
                                padding: EdgeInsets.only(
                                    right: 5, left: 5, bottom: 5, top: 5),
                                child: Text(
                                  seminar.title,
                                  style: TextStyle(color: Colors.white),
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            seminar.isActive
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
                        flex: 6,
                        child: Container(
                          padding:
                              EdgeInsets.only(right: 5, left: 5, bottom: 5),
                          child: Text(
                            seminar.description,
                            textAlign: TextAlign.center,
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
