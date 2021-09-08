import '../widgets/body_unsubscribe_screen.dart';

import '../widgets/body_bank_details_screen.dart';

import '../constants.dart';
import '../size_config.dart';
import 'package:flutter/material.dart';

class BankDetailsScreen extends StatelessWidget {
  static const routeName = '/bank-details';
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
          'Bank Details',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(17),
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: BodyBankDetailsScreen(details[0]),
    );
  }
}
