import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day39Lesson01 extends StatelessWidget {
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
            'බොහෝවිට O/L විභාගයේදී දැකිය හැකි ප්‍රශ්නයකි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'O/L විභාගයේදී ඉතා පහසුවෙන් ලකුණු ලබා ගත හැකිය.',
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
            'නමුත් ඔබ හොඳින්ම දැනගත යුතු කාරණය වන්නේ මෙම ප්‍රශ්නයට ඔබ පිළිතුරු සපයන්නේ නම් පහත කරුණු පිළිබඳව අවධානය යොමු කල යුතුය.',
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
            'Dialogue writing වලදී වැඩිපුරම යෙදෙන්නේ questions බැවින් ඔබ තුල yes/ no questions, WH questions ගැන හොඳ අවබෝධයක් තිබිය යුතුය.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'ඔබ තුල ඒ සඳහා දැනුම මදිනම් හැකි ඉක්මනින් අපගේ Mr English app 1හි 14, 15 days වල ඇති පාඩම් සම්පුර්ණ කරන්න.',
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
            '1. Dialogue වලදී හැකිතරම් අඩු characters (2) ප්‍රමාණයක් තෝරා ගන්න.',
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
            '2. Punctuation marks පිළිබඳව සැලකිලිමත් වෙන්න.',
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
            '3. අනෙක් කාරණය නම් dialogue ගොඩ නඟන විට එය බොහෝ creative වීමයි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'එදිනෙදා ජීවිතයට එහා ගිය නිර්මාණශීලී කුතුහලය පිරුණු කතාවක් ඒ තුල තිබිය යුතුය.',
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
