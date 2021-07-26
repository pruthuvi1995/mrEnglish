import 'dart:ui';

import 'package:mr_english/providers/class.dart';
import 'package:mr_english/providers/seminar.dart';
import 'package:mr_english/screens/class_video_screen.dart';
import 'package:mr_english/screens/classes_screen.dart';
import 'package:mr_english/screens/seminar_screen.dart';

import '../constants.dart';
import '../screens/paper_screen.dart';
import '../screens/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/year.dart';
import '../size_config.dart';

class ClassItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String subTitle;
  // final int mark;
  // final String imageUrl;
  // final bool isCompleted;

  // DayItem(this.id, this.title, this.subTitle, this.mark, this.imageUrl,this.isCompleted);

  @override
  Widget build(BuildContext context) {
    final oneClass = Provider.of<Class>(context);

    return Container(
        width: double.infinity,
        // height: height * .4,
        child: buildGestureDetector(
            context, oneClass, oneClass.title, oneClass.videoURL));
  }

  GestureDetector buildGestureDetector(
      BuildContext context, Class oneClass, String name, String videoURL) {
    return GestureDetector(
      onTap: () {
        oneClass.isActive
            ? Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ClassesScreen(oneClass.className)),
              )
            : Navigator.of(context).popAndPushNamed(
                PaymentScreen.routeName,
                arguments: [oneClass.id, 'class'],
              );
      },
      child: Container(
        margin: EdgeInsets.only(right: 5, left: 5, bottom: 5),
        height: getProportionateScreenWidth(100),
        child: Card(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            child: Text(
                              name,
                              style: TextStyle(
                                fontSize: getProportionateScreenHeight(20),
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        oneClass.isActive
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
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    color: kPrimaryColor,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          'Let\'s see the video.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: getProportionateScreenHeight(15),
                          ),
                        ),
                        Text(
                          '( වීඩියෝව බලමු. )',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: getProportionateScreenHeight(15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          elevation: 5,
        ),
      ),
    );
  }
}
