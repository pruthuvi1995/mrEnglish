import 'dart:math';
import 'dart:ui';

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
        child: GridTile(
          child: Stack(children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor),
                // gradient: LinearGradient(
                //     begin: Alignment.bottomCenter,
                //     end: Alignment.topCenter,
                //     colors: [
                //       kPrimaryColor,
                //       Colors.blue,
                //     ]),
              ),
              // color: Color(Random().nextInt(0xffffffff)),
              child: Column(
                children: [
                  Text(
                    'Day',
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(20),
                      fontWeight: FontWeight.bold,
                      // backgroundColor: Colors.amber[50],
                    ),
                  ),
                  Text(
                    day.dayNo.toString(),
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(40),
                      fontWeight: FontWeight.bold,
                      // backgroundColor: Colors.amber[50],
                    ),
                  ),
                ],
              ),
            ),
            if (!day.isActive)
              Container(
                child: Icon(
                  Icons.lock,
                  size: getProportionateScreenHeight(40),
                  color: kPrimaryColor,
                ),
              ),
          ]),
          footer: GridTileBar(
            backgroundColor: kPrimaryColor,
            leading: Text(
              '${roundDouble(day.totalMark, 1) * 100}%',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenHeight(15),
                  fontWeight: FontWeight.bold),
            ),
            trailing: day.isCompletedDay
                ? Text(
                    'Completed',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: getProportionateScreenHeight(12),
                        fontWeight: FontWeight.bold),
                  )
                : Text(
                    'Not Completd',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: getProportionateScreenHeight(12),
                        fontWeight: FontWeight.bold),
                  ),
          ),
        ),
      ),
    );
  }
}
