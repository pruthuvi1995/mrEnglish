import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day15Lesson01 extends StatelessWidget {
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
            //para
            Text(
              'English language වල question වර්ග 2ක් පවතින බව කලින් පාඩම් මාලාවේදී ඔබ ඉගෙන ගෙන ඇත. එසේනම් එහි දෙවන කොටස අද ඒගෙන ගනිමු. O/L exam එකේදී dialogue ගොඩනැගීමේදී හා reported speech සඳහා ද ප්‍රශ්න තේරුම් ගැනීම සඳහා ද අද දින සිදු කරන lesson එක ඉතාමත් වැදගත් වේ.',
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
              'Common WH questions',
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
              'what - මොකද්ද',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'where - කොහෙද',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'why - ඇයි',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'when - කීයටද / කවදද',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'who - කව්ද',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'whose - කාගේද (අයිතිය)',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'whom - කාවද ',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'which - කෝකද',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'how - කොහොමද',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'how many - කොපමණද (countable)',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'how much - කොපමණද (uncountable)',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'how often - කොපමණ වාර ගණනක්ද',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'how long - කොපමණ කාලයක් ද',
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
              'දැන් අපි WH question ගොඩ නැගෙන අයුරු බලමු. අපි සරල උදාහරණයක් ගමු.',
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
              ' Where are you going?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              ' (ඔබ කොහෙද යමින් ඉන්නේ?)',
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
              'මේ ප්‍රශ්නය තුල WH question වගේම yes / no question ද ඇත.',
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
              'Where - WH question',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'are you going - yes / no question',
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
              'අපි සරලව බැලුවොත් මෙම ප්‍රශ්නය සැදෙන්නේ',
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
              '  You are going.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  (ඔබ යමින් ඉන්නවා.)',
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
              '  Are you going?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  (ඔබ යමින්ද එන්නේ?)',
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
              '  Where are you going?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  (කොහෙද ඔබ යමින් ඉන්නේ?)',
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
              'මෙම ප්‍රශ්නය ගොඩ නගන්නේ කොහොමද කියලා අපි දැන් බලමු.',
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
              'ඔබ කීයටද town එකට යන්නේ?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  You go to the town.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  Do you go to the town?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  When do you go to the town?',
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
              'මෙම ප්‍රශ්නය ගොඩ නගන්නේ කොහොමද කියලා අපි දැන් බලමු',
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
              'ඔබ ගාව පරිවර්තන පොත් කීයක් තියනවද?',
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
              '  You have',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  (ඔබට තියනවා.)',
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
              '  Do you have',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  (ඔබට තියනවාද?)',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  How many translations do you have?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  (පරිවර්තන පොත් කීයක් ඔබට තියනවා ද?)',
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
              'මෙම ප්‍රශ්නය ගොඩ නගන්නේ කොහොමද කියලා අපි දැන් බලමු.',
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
              'ඔබට කාවද මරන්න ඕනා?',
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
              '  You want to kill.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  Do you want to kill?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  Who do you want to kill?',
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
              'මෙම ප්‍රශ්නය ගොඩ නගන්නේ කොහොමද කියලා අපි දැන් බලමු.',
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
              'ඔබ කොතරම් කාලයක් මෙහි රැකියාව කරනවා ද?',
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
              '  You have been working here.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  Have you been working here?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  How long have you been working here?',
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
