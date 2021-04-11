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
                            getProportionateScreenWidth(20)),
                        child: Container(
                          // margin:
                          //     EdgeInsets.only(left: getProportionateScreenHeight(5)),
                          // height: getProportionateScreenWidth(75),
                          // width: getProportionateScreenWidth(100),
                          color: kPrimaryColor,
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  'Day',
                                  style: TextStyle(
                                      fontSize:
                                          getProportionateScreenHeight(20),
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      height: 2),
                                ),
                                Text(
                                  day.dayNo.toString(),
                                  style: TextStyle(
                                    fontSize: getProportionateScreenHeight(50),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                ),
                                Divider(),
                                Text(
                                  'Rs. ${day.amount} + tax',
                                  style: TextStyle(
                                    fontSize: getProportionateScreenHeight(15),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1,
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
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  day.isCompletedDay
                                      ? Text(
                                          'Completed',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize:
                                                  getProportionateScreenHeight(
                                                      17.5),
                                              fontWeight: FontWeight.bold),
                                        )
                                      : Text(
                                          'Not Completd',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize:
                                                  getProportionateScreenHeight(
                                                      17.5),
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
                                      ? Icon(
                                          Icons.lock_open_outlined,
                                          size:
                                              getProportionateScreenHeight(40),
                                          color: Colors.green,
                                        )
                                      : Container(
                                          child: Icon(
                                            Icons.lock_outlined,
                                            size: getProportionateScreenHeight(
                                                40),
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
                                            size: getProportionateScreenHeight(
                                                25),
                                            color: kPrimaryColor,
                                          ),
                                          Text(
                                            '  ${lesson.title}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize:
                                                    getProportionateScreenHeight(
                                                        17.5),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      );
                                    },
                                  ).toList(),
                                ],
                              )),
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

        // child: GridTile(
        //   child: Stack(children: [
        //     Container(
        //       width: double.infinity,
        //       decoration: BoxDecoration(
        //         border: Border.all(color: kPrimaryColor),
        //         // gradient: LinearGradient(
        //         //     begin: Alignment.bottomCenter,
        //         //     end: Alignment.topCenter,
        //         //     colors: [
        //         //       kPrimaryColor,
        //         //       Colors.blue,
        //         //     ]),
        //       ),
        //       // color: Color(Random().nextInt(0xffffffff)),
        //       child: Column(
        //         children: [
        //           Text(
        //             'Day',
        //             style: TextStyle(
        //               fontSize: getProportionateScreenHeight(20),
        //               fontWeight: FontWeight.bold,
        //               // backgroundColor: Colors.amber[50],
        //             ),
        //           ),
        //           Text(
        //             day.dayNo.toString(),
        //             style: TextStyle(
        //               fontSize: getProportionateScreenHeight(40),
        //               fontWeight: FontWeight.bold,
        //               // backgroundColor: Colors.amber[50],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     if (!day.isActive)
        //       Container(
        //         child: Icon(
        //           Icons.lock,
        //           size: getProportionateScreenHeight(40),
        //           color: kPrimaryColor,
        //         ),
        //       ),
        //   ]),
        //   footer: GridTileBar(
        //     backgroundColor: kPrimaryColor,
        //     leading: Text(
        //       '${roundDouble(day.totalMark, 1) * 100}%',
        //       textAlign: TextAlign.left,
        //       style: TextStyle(
        //           color: Colors.white,
        //           fontSize: getProportionateScreenHeight(15),
        //           fontWeight: FontWeight.bold),
        //     ),
        //     trailing: day.isCompletedDay
        //         ? Text(
        //             'Completed',
        //             style: TextStyle(
        //                 color: Colors.green,
        //                 fontSize: getProportionateScreenHeight(12),
        //                 fontWeight: FontWeight.bold),
        //           )
        //         : Text(
        //             'Not Completd',
        //             style: TextStyle(
        //                 color: Colors.red,
        //                 fontSize: getProportionateScreenHeight(12),
        //                 fontWeight: FontWeight.bold),
        //           ),
        //   ),
        // ),
      ),
    );
  }
}
