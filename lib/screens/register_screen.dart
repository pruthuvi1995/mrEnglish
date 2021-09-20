import '../constants.dart';
import '../size_config.dart';
import '../widgets/body_register_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Register',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(15),
          ),
        ),
      ),
      body: BodyRegisterScreen(),
    );
  }
}
