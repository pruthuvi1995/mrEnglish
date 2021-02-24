import 'package:flutter/material.dart';
import '../size_config.dart';

class Review extends StatelessWidget {
  final bool isCorrect;
  final String correctAnswer;
  final String review;
  final String givenAnswer;

  Review(this.isCorrect, this.correctAnswer, this.review, this.givenAnswer);

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
                'Your given answer is \"$givenAnswer\".',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(18),
                  color: Color(0xff1b5e20),
                ),
              ),
              Text(
                'It is correct.',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(18),
                  color: Color(0xff1b5e20),
                ),
              ),
              Text(
                review,
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
                'Your given answer is \"$givenAnswer\".',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(18),
                  color: Color(0xffb71c1c),
                ),
              ),
              Text(
                'It is wrong.',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(18),
                  color: Color(0xffb71c1c),
                ),
              ),
              Text(
                'Correct answer: $correctAnswer',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(18),
                  color: Color(0xffb71c1c),
                ),
              ),
              Text(
                review,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(18),
                  color: Color(0xffb71c1c),
                ),
              ),
            ]),
          );
  }
}
