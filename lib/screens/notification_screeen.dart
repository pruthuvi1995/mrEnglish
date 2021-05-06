import 'package:flutter/material.dart';
import '../providers/message.dart';
import '../widgets/messaging_widget.dart';

import '../constants.dart';
import '../size_config.dart';
import '../widgets/mcq_paper.dart';
import './day_details_screen.dart';

class NotificationScreen extends StatelessWidget {
  static const routeName = '/notification';

  @override
  Widget build(BuildContext context) {
    final messages = ModalRoute.of(context).settings.arguments as List<Message>;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(17),
          ),
        ),
      ),
      body: MessagingWidget(messages),
    );
  }
}
