import '../constants.dart';
import '../size_config.dart';
import '../widgets/body_sign_in_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign In',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(15),
          ),
        ),
      ),
      body: BodySignInScreen(),
    );
  }
}
