import '../widgets/body_subscribe_screen.dart';

import '../constants.dart';
import '../size_config.dart';
import 'package:flutter/material.dart';

class SubscribeScreen extends StatelessWidget {
  static const routeName = '/subscribe';
  // final String navigation;
  // final bool isSubscribed;
  // final String token;

  // SubscribeScreen(this.navigation,this.isSubscribed,this.token);

  @override
  Widget build(BuildContext context) {
    final details = ModalRoute.of(context).settings.arguments as List;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Subscribe',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(17),
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: BodySubscribeScreen(details),
    );
  }
}
