import 'package:flutter/material.dart';

import '../size_config.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;

  Answer(this.answerText, this.selectHandler);

  var answerColor = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: getProportionateScreenHeight(5),
        left: getProportionateScreenHeight(30),
        right: getProportionateScreenHeight(30),
      ),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          selectHandler(answerText);
        },
        padding: EdgeInsets.all(getProportionateScreenHeight(10)),
        child: Text(
          answerText,
          style: TextStyle(
            fontSize: getProportionateScreenHeight(17),
          ),
          softWrap: true,
          overflow: TextOverflow.fade,
        ),
      ),
    );
  }
}
