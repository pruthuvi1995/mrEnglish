import 'package:flutter/material.dart';
import 'package:mr_english/size_config.dart';
import '../size_config.dart';

class Question extends StatelessWidget {
  final String qText;
  final String type;

  Question(this.qText, this.type);

  @override
  Widget build(BuildContext context) {
    List<String> dialogText = [];
    if (type == 'Dialog') {
      dialogText = qText.split("*");
    }

    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      width: double.infinity,
      child: Container(
        width: double.infinity,
        color: Colors.black12,
        padding: EdgeInsets.all(getProportionateScreenHeight(15)),
        child: type == 'Dialog'
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...(dialogText).map(
                    (text) {
                      return Text(
                        text,
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(18),
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      );
                    },
                  ).toList()
                ],
              )
            : Text(
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
