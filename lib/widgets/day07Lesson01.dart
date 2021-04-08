import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day07Lesson01 extends StatelessWidget {
  double titleSize = getProportionateScreenHeight(20);
  double size = getProportionateScreenHeight(18);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(getProportionateScreenHeight(15)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Divider(),
            Text(
              'Introduction',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'Be verbs යන්නට එක හෙලාම නිවැරිදි අර්ථකතනයක් දීමට නොහැකි වුවද ඉංග්‍රීසි භාෂාවේදී මේවා නිතරම භාවිතා වේ. Names, feelings, age, professions, nationalities ගැන කතා කිරීමේදී be verbs අත්‍යවශ්‍ය වේ.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'ප්‍රධාන වශයෙන් ඉංග්‍රීසි භාෂාවේදී 6ක් ගැන කතා කරයි. ඒවා present, past, future ලෙස වර්ග කෙරේ. මේවා සමඟ භාවිතා වන අයුරු පහත පෙන්වා දී ඇත.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'Present',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'I -> am',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'You/ We/ They -> are',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'He/ She/ it -> is',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'Past',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'I -> was',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'You/ We/ They -> were',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'Future',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'I -> will be',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'You/ We/ They -> will be',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'He/ She/ it -> will be',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'මීට අමතරව been, being ලෙස be verbs ඇත.ඒවා perfect tense යටතේදී සාකච්චා කෙරේ. මුලික be verbs වන්නේ ඉහත දැක්වූ be verbs 6යි.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
        ]),
      ),
    );
  }
}
