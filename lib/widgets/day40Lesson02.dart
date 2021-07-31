import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day40Lesson02 extends StatelessWidget {
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
          //main titles
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
            'Speech writing විශේෂයෙන්ම O/L exam ලියන සිසුන් සඳහා වැදගත් වේ. ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'මෙහිදී සමහර සිසුන් සිතන්නේ speech එකක් article හෝ essay ලිවීම හා සමාන බවයි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'නමුත් පැහැදිලිවම මේවායේ විශාල වෙනස්කම් ඇත.',
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
            'Speech ලිවීමේදී ඔබ දැනගත යුතු වැදගත්ම කාරණාව වන්නේ එහි ප්‍රධාන කොටස් තුනක් ඇති බවයි.',
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
            ' 1. Start',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            ' 2. Body of the speech',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            ' 3. Ending',
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
            'Start',
            style: TextStyle(
                fontSize: size,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'සිංහලෙන් අපි කතාවක් ආරම්භ කලත් පළමුව අවසර ගැනීමක් සිදු වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'එසේම speech writing වලදී අවසර ගැනීමක් සඳහන් කල යුතුය.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Speech writing වලදී තමා එම speech එක සිදු කරමින් සිටින බව imagine කලයුතුය.',
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
            'Starting ways කිහිපයක් සලකමු.',
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
            '1. Principal sir, dear teachers, and my dear friends. Today is a red-letter day for me. Because I am going to talk about ................',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '(විදුහල්පතිතුමා, ගුරුභවතුන් සහ මාගේ මිතුරනි. අද දවස ඉතාමත් වැදගත් මොකද මම කතා කරන්න යන්නේ ...................)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
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
            '2. Venerable Thero (ගෞරවනීය ස්වාමීන් වහන්ස), principal sir, dear teachers, and my dear friends.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
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
            '3. Venerable Thero, honorable minister of education Mr. Sameera Aththanayake (ගෞරවනීය අධ්‍යාපන ඇමතිතුමා)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
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
            '4. Dear principal sir, dear teachers, parents, and students.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
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
            'ඒ ඒ අවස්තාව අනුව ආරම්භය වෙනස් වේ.',
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
            'Body of the speech',
            style: TextStyle(
                fontSize: size,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'අපි උදාහරණයක් ලෙස covid 19 ගැටලුව ගැන කතා කරන අවස්තාවක් සිතමු. ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'මෙහිදී විඩෙන් විඩේ \'සහෝදරවරුනි, හිතවතුනි ඔබ දන්නවා.\' පරිදි පිරිස ආමන්ත්‍රණය කෙරේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'ඒ පරිද්දෙන් අපි English speech ලිවීමේදීද සිදු කල යුතුය.',
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
            '1. Dear students, You know the present situation of covid 19 in Sri Lanka.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
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
            '2. Friends, I have one question for you.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
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
            '3. If it is so, everybody should understand the responsibility.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
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
            'End',
            style: TextStyle(
                fontSize: size,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Speech අවසන් කිරීමේදී කතාවේ summery එකක් ඉදිරිපත් කිරීම වැදගත් වේ.',
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
            ' Now I am going to wind up my speech. But before that let\'s summarize the points. .................................',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            ' Have a great day. Thank you very much.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
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
