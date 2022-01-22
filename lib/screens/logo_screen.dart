import '../size_config.dart';
import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  static const routeName = '/logo';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    print("logo screen");

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Center(
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(getProportionateScreenWidth(25)),
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.fitHeight,
                height: getProportionateScreenHeight(150),
                // width: double.infinity,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
