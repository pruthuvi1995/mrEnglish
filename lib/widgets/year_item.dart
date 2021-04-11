import 'dart:ui';

import '../constants.dart';
import '../screens/paper_screen.dart';
import '../screens/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/year.dart';
import '../size_config.dart';

class YearItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String subTitle;
  // final int mark;
  // final String imageUrl;
  // final bool isCompleted;

  // DayItem(this.id, this.title, this.subTitle, this.mark, this.imageUrl,this.isCompleted);

  @override
  Widget build(BuildContext context) {
    final year = Provider.of<Year>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(getProportionateScreenHeight(10)),
      child: GestureDetector(
        onTap: () {
          year.isActive
              ? Navigator.of(context).pushNamed(
                  PaperScreen.routeName,
                  arguments: year.id,
                )
              : Navigator.of(context).popAndPushNamed(
                  PaymentScreen.routeName,
                  arguments: [year.id, 'year'],
                );
        },
        child: GridTile(
          child: Stack(children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor),
                // gradient: LinearGradient(
                //     begin: Alignment.centerLeft,
                //     end: Alignment.centerRight,
                //     colors: [
                //       Color(Random().nextInt(0xffffffff)),
                //       Color(Random().nextInt(0xffffffff))
                //     ]),
              ),
              // color: Color(Random().nextInt(0xffffffff)),
              child: Column(
                children: [
                  Text(
                    'Year',
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(20),
                      fontWeight: FontWeight.bold,
                      // backgroundColor: Colors.amber[50],
                    ),
                  ),
                  Text(
                    year.year,
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(37),
                      fontWeight: FontWeight.bold,
                      // backgroundColor: Colors.amber[50],
                    ),
                  ),
                ],
              ),
            ),
            if (!year.isActive)
              Container(
                // color: Color(Random().nextInt(0xffffffff)),
                child: Icon(
                  Icons.lock,
                  size: getProportionateScreenHeight(40),
                  color: kPrimaryColor,
                ),
              ),
          ]),
          // Image.network(
          //   day.imageUrl,
          //   fit: BoxFit.cover,
          // ),
          footer: GridTileBar(
            backgroundColor: kPrimaryColor,
            trailing: year.isActive
                ? Text(
                    'Active',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(17),
                    ),
                  )
                : Text(
                    'Not Active',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(17),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
