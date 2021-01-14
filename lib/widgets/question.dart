import 'package:flutter/material.dart';
import 'package:mr_english/size_config.dart';
import '../size_config.dart';

class Question extends StatelessWidget {
  final String qText;

  Question(this.qText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      width: double.infinity,
      child: Container(
        color: Colors.black12,
        padding: EdgeInsets.all(getProportionateScreenHeight(15)),
        child: Text(
          qText,
          style: TextStyle(
            fontSize: getProportionateScreenHeight(18),
            fontWeight: FontWeight.bold,
          ),
          softWrap: true,
          overflow: TextOverflow.fade,
        ),
      ),
    );
  }
}
