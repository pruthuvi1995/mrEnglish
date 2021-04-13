import 'dart:convert';
import 'dart:io';

import 'package:mr_english/providers/auth.dart';
import '../screens/trail_paper_screen.dart';
import 'package:provider/provider.dart';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

class BodyBeforeTrailPaperScreen extends StatelessWidget {
  final List details;
  BodyBeforeTrailPaperScreen(this.details);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'මෙම පාඩම ඉගැන්වීමට පෙර මෙම පාඩම සම්බන්ධයෙන් ඔබ ළඟ දැනට ඇති දැනුම පරික්ෂා කිරීම සඳහා කෙටි trial paper එකක් ලබා දෙනු ලැබේ. එහි ලකුණු මෙම පාඩමට ඔබට ලබාගත හැකි ලකුණු සඳහා එකතු නොකරේ. ඉන්පසුව වැලිපිටිය sir ගේ පාඩම ලබා ගත හැක.',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: getProportionateScreenWidth(17),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).popAndPushNamed(
                TrailPaperScreen.routeName,
                arguments: details,
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                bottom: getProportionateScreenHeight(5),
                left: getProportionateScreenHeight(5),
                right: getProportionateScreenHeight(5),
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(getProportionateScreenHeight(15)),
                color: kPrimaryColor,
              ),
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              child: Text(
                'Ok',
                style: TextStyle(
                    fontSize: getProportionateScreenHeight(25),
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
