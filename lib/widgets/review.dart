import 'package:flutter/material.dart';
import '../size_config.dart';

class Review extends StatelessWidget {
  final bool isCorrect;
  final String correctAnswer;

  Review(this.isCorrect, this.correctAnswer);

  @override
  Widget build(BuildContext context) {
    return isCorrect
        ? Container(
            padding: EdgeInsets.all(getProportionateScreenHeight(9)),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(getProportionateScreenHeight(9)),
              border: Border.all(
                width: getProportionateScreenHeight(1),
                color: Color(0xff1b5e20),
              ),
              color: Color(0xffc8e6c9),
            ),
            child: Column(children: <Widget>[
              Text(
                'Congralulation...',
                style: TextStyle(
                    fontSize: getProportionateScreenHeight(18),
                    color: Color(0xff1b5e20)),
              ),
              Text(
                'Your answer is correct!',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(18),
                  color: Color(0xff1b5e20),
                ),
              ),
            ]),
          )
        : Container(
            decoration: BoxDecoration(
              color: Color(0xffffcdd2),
              borderRadius:
                  BorderRadius.circular(getProportionateScreenHeight(9)),
              border: Border.all(
                width: getProportionateScreenHeight(1),
                color: Color(0xffb71c1c),
              ),
            ),
            padding: EdgeInsets.all(getProportionateScreenHeight(9)),
            width: double.infinity,
            child: Column(children: <Widget>[
              Text(
                'Your answer is wrong!',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(18),
                  color: Color(0xffb71c1c),
                ),
              ),
              Text(
                '$correctAnswer',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(18),
                  color: Color(0xffb71c1c),
                ),
              ),
            ]),
          );
  }
}
