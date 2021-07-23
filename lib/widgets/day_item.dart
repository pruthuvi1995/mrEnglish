import 'dart:math';
import 'dart:ui';

// import '/providers/lessons.dart';

import '../providers/lessons.dart';

import '../constants.dart';
import '../screens/payment_screen.dart';
import '../size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/day_details_screen.dart';
import '../providers/day.dart';

class DayItem extends StatelessWidget {
  double roundDouble(double value, int places) {
    double mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  @override
  Widget build(BuildContext context) {
    final day = Provider.of<Day>(context);

    // print(day.id);
    final loadedLesson =
        Provider.of<Lessons>(context, listen: false).findByDayID(day.id);

    return ClipRRect(
      borderRadius: BorderRadius.circular(getProportionateScreenHeight(10)),
      child: GestureDetector(
        onTap: () {
          day.isActive
              ? Navigator.of(context).pushNamed(
                  DayDetailsScreen.routeName,
                  arguments: day.id,
                )
              : Navigator.of(context).popAndPushNamed(
                  PaymentScreen.routeName,
                  arguments: [day.id, 'day'],
                );
        },
        child: Container(
          margin: EdgeInsets.only(right: 5, left: 5),
          height: getProportionateScreenWidth(200),
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor),
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(5)),
              ),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: getProportionateScreenHeight(5),
                        right: getProportionateScreenHeight(10),
                        top: getProportionateScreenHeight(5),
                        bottom: getProportionateScreenHeight(5),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(10)),
                        child: Container(
                          // margin:
                          //     EdgeInsets.only(left: getProportionateScreenHeight(5)),
                          // height: getProportionateScreenWidth(75),
                          // width: getProportionateScreenWidth(100),
                          color: kPrimaryColor,
                          child: Center(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    'Day',
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(20),
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        height: 2),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    day.dayNo.toString(),
                                    style: TextStyle(
                                      fontSize: getProportionateScreenWidth(50),
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.white,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Rs. ${day.amount} + tax',
                                    style: TextStyle(
                                      fontSize: getProportionateScreenWidth(12),
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.only(
                          top: getProportionateScreenHeight(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  day.isCompletedDay
                                      ? Text(
                                          'Completed',
                                          style: TextStyle(
                                              color: Color(0xFF14a96d),
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      15),
                                              fontWeight: FontWeight.bold),
                                        )
                                      : Text(
                                          'Not Completd',
                                          style: TextStyle(
                                              color: Color(0xFFF6b90F),
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      15),
                                              fontWeight: FontWeight.bold),
                                        ),
                                  VerticalDivider(
                                    color: kPrimaryColor,
                                  ),
                                  Text(
                                    '${roundDouble(day.totalMark, 1) * 100}%',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize:
                                            getProportionateScreenHeight(17.5),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  VerticalDivider(
                                    color: kPrimaryColor,
                                  ),
                                  day.isActive
                                      ? Padding(
                                          padding: EdgeInsets.all(
                                              getProportionateScreenWidth(1)),
                                          child: Icon(
                                            Icons.lock_open_outlined,
                                            size:
                                                getProportionateScreenWidth(25),
                                            color: Colors.green,
                                          ),
                                        )
                                      : Container(
                                          child: Icon(
                                            Icons.lock_outlined,
                                            size:
                                                getProportionateScreenWidth(25),
                                            color: Colors.red,
                                          ),
                                        ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            color: kPrimaryColor,
                          ),
                          Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  ...(loadedLesson as List).map(
                                    (lesson) {
                                      return Row(
                                        children: [
                                          Icon(
                                            Icons.check,
                                            size:
                                                getProportionateScreenWidth(20),
                                            color: kPrimaryColor,
                                          ),
                                          Text(
                                            '${lesson.title}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                        15),
                                                fontWeight: FontWeight.bold),
                                            softWrap: true,
                                          ),
                                        ],
                                      );
                                    },
                                  ).toList(),
                                ],
                              )),
                          // Expanded(
                          //   flex: 3,
                          //   child: GestureDetector(
                          //     // onTap: () {
                          //     //   Navigator.of(context).pushReplacementNamed(
                          //     //     DScreen.routeName,
                          //     //     arguments: dayId,
                          //     //   );
                          //     // },
                          //     child: Container(
                          //       margin: EdgeInsets.all(
                          //           getProportionateScreenWidth(5)),
                          //       padding: EdgeInsets.all(
                          //           getProportionateScreenWidth(3)),
                          //       decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(
                          //             getProportionateScreenHeight(15)),
                          //         color: kPrimaryColor,
                          //       ),
                          //       child: Text(
                          //         ' Activate ',
                          //         style: TextStyle(
                          //           fontSize: getProportionateScreenWidth(15),
                          //           color: Colors.white,
                          //         ),
                          //         textAlign: TextAlign.center,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            elevation: 5,
          ),
        ),
      ),
    );
  }
}
