import '../constants.dart';
import '../size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.image,
    this.text,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Spacer(flex: 10),
      Text(
        'MR ENGLISH',
        style: TextStyle(
          fontSize: getProportionateScreenWidth(30),
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(text),
      Spacer(),
      Image.network(
        image,
        height: getProportionateScreenHeight(300),
        width: getProportionateScreenWidth(200),
      ),
    ]);
  }
}
