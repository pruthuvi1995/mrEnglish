import 'dart:math';

import './issue_certificate_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../constants.dart';
import '../providers/auth.dart';
import 'package:provider/provider.dart';
import '../size_config.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';

  double roundDouble(double value, int places) {
    double mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  @override
  Widget build(BuildContext context) {
    final firstName = Provider.of<Auth>(context, listen: false).firstName;
    final lastName = Provider.of<Auth>(context, listen: false).lastName;
    final nicNo = Provider.of<Auth>(context, listen: false).nicNo;
    var mark = Provider.of<Auth>(context, listen: false).mark;
    final noOfFinishedLessons =
        Provider.of<Auth>(context, listen: false).noOfFinishedLessons;
    String name = '$firstName $lastName';
    String stringMark = '${mark.toString()}%';
    mark = roundDouble(mark, 2);

    return Scaffold(
      appBar: AppBar(
        title: Text('My profile'),
      ),
      drawer: AppDrawer(),
      body: Container(
          child: Column(children: [
        buildDetailsCard('Name', name),
        buildDetailsCard('NIC Number', nicNo),
        // buildDetailsCard('Phone Number', phoneNo),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildBigCard('Total', 'Mark', stringMark),
            buildBigCard('Completed', 'Days', noOfFinishedLessons.toString()),
          ],
        ),
        if (noOfFinishedLessons == 50)
          Container(
            margin: EdgeInsets.only(
                top: getProportionateScreenHeight(10),
                left: getProportionateScreenHeight(10),
                right: getProportionateScreenHeight(10)),
            child: RaisedButton(
              color: kPrimaryColor,
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(IssueCertificateScreen.routeName);
              },
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'සහතික පත්‍රය ලබා ගැනීමට.',
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(18),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        bottom: getProportionateScreenHeight(15)),
                    child: Text(
                      'Click here',
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(18),
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ])),
    );
  }

  Container buildBigCard(String title1, String title2, String value) {
    return Container(
      margin: EdgeInsets.only(
          top: getProportionateScreenHeight(20),
          right: getProportionateScreenHeight(10),
          left: getProportionateScreenHeight(10)),
      height: getProportionateScreenHeight(200),
      width: getProportionateScreenWidth(150),
      child: Card(
        elevation: 6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title1,
              style: TextStyle(fontSize: getProportionateScreenHeight(17)),
            ),
            Text(
              title2,
              style: TextStyle(fontSize: getProportionateScreenHeight(17)),
            ),
            Text(
              value,
              style: TextStyle(fontSize: getProportionateScreenHeight(40)),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDetailsCard(String title, String name) {
    return Container(
      margin: EdgeInsets.only(
        top: getProportionateScreenHeight(10),
      ),
      width: getProportionateScreenWidth(300),
      child: Card(
        elevation: 6,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: kPrimaryColor,
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(17),
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(17),
                  color: kPrimaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
