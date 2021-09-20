import '../size_config.dart';
import 'package:flutter/material.dart';

import '../widgets/body_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: BodySplashScren(),
    );
  }
}
