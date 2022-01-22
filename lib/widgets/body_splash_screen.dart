import 'dart:isolate';

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
      "text": "1st Course",
      "image": "https://tlgur.com/d/gpzyRYd8 ",
    },
    {
      "text": "2nd Course",
      "image": "https://tlgur.com/d/4yBoAq28",
    },
    {
      "text": "3rd Course",
      "image": "https://tlgur.com/d/gpzyRYd8 ",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            children: <Widget>[
              Spacer(
                flex: 10,
              ),
              Expanded(
                flex: 4,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(getProportionateScreenWidth(25)),
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.fitHeight,
                    height: getProportionateScreenHeight(100),
                    // width: double.infinity,
                  ),
                ),
              ),
              // Image.network(
              //   image,
              //   height: getProportionateScreenHeight(300),
              //   width: getProportionateScreenWidth(200),
              // ),
              Spacer(
                flex: 1,
              ),

              Expanded(
                flex: 4,
                child: Text(
                  'ඔබට පහත පාඨමාලා හැදෑරිය හැක.',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(15),
                    // color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                  flex: 12,
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
                  flex: 8,
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
                        flex: 1,
                      ),
                      DefaultButton(
                        text: 'දැන් අපි පටන් ගමු',
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
