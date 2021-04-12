import '../widgets/body_before_trail_paper.dart';

import '../widgets/body_unsubscribe_screen.dart';

import '../widgets/body_subscribe_screen.dart';

import '../constants.dart';
import '../size_config.dart';
import 'package:flutter/material.dart';

class BeforeTrailPaperScreen extends StatelessWidget {
  static const routeName = '/before-trail-paper';
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
          'Notice',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(17),
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: BodyBeforeTrailPaperScreen(details),
    );
  }
}
