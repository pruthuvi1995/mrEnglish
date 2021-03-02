import '../screens/register_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        width: getProportionateScreenWidth(300),
        child: Text(
          'ඔබ Mr English තුළ account එකක් මීට පෙර සදා නැත්ද?නැත්නම් Register මත click කරන්න.',
          softWrap: true,
          style: TextStyle(fontSize: getProportionateScreenWidth(12.5)),
        ),
      ),
      SizedBox(
        height: getProportionateScreenHeight(20),
      ),
      GestureDetector(
        onTap: () => {Navigator.pushNamed(context, RegisterScreen.routeName)},
        child: Text(
          'Register',
          style: TextStyle(
            fontSize: getProportionateScreenHeight(25),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ]);
  }
}
