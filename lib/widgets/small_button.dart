import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    Key key,
    this.text,
    this.press,
    this.color,
  }) : super(key: key);
  final String text;
  final Function press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: color,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
