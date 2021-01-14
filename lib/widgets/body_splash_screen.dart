import '../screens/sign_in_screen.dart';
import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'splash_content.dart';
import 'default_button.dart';

class BodySplashScren extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<BodySplashScren> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Active English. Den api patan gamu",
      "image": "https://tlgur.com/d/4yBoa1Z8"
    },
    {
      "text": "Dina 60 course eka",
      "image": "https://tlgur.com/d/4yBoAq28",
    },
    {
      "text": "past paper course eka",
      "image": "https://tlgur.com/d/gpzyRYd8 ",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 4,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]['image'],
                    text: splashData[index]['text'],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 4,
                    ),
                    DefaultButton(
                      text: 'Continue',
                      press: () => {
                        Navigator.pushNamed(context, SignInScreen.routeName),
                      },
                    ),
                    Spacer(),
                  ]),
                )),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: getProportionateScreenHeight(5)),
      height: getProportionateScreenHeight(6),
      width: currentPage == index
          ? getProportionateScreenHeight(20)
          : getProportionateScreenHeight(6),
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xffd8d8d8),
        borderRadius: BorderRadius.circular(getProportionateScreenHeight(3)),
      ),
    );
  }
}
