import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day40Lesson01 extends StatelessWidget {
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
            'Story writing O/L එකේදී ඉතාමත් වැදගත් ප්‍රශ්නයකි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'ඉතාමත් පහසු ප්‍රශ්නයක් වුවද බොහෝ පිරිසක් මෙය ලිවීමට මැලි වන්නේ එහි techniques නොදන්නා බැවිනි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'ඒ නිසා මෙම පාඩමේදී ඉතා සරලව story writing ගැන පැහැදිලි කරදී ඇත.',
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
            'Story writing වලදී folk stories (ජනකතා) ඉතා ජනප්‍රිය වේ. ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'ඒ හැරුණු කොටගෙන අතීතයේ සිදුවීමක් මුල්කරගෙන ද stories බිහි වේ.',
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
            'Story writing වලදී පහත techniques අනුගමනය කරන්න.',
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
            '1. බොහෝවිට story writing යෙදෙන්නේ simple past tense සමඟය.',
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
            '2. කතාව කුතුහලය දනවන්නක් විය යුතුය. රසවත් විය යුතුය. නිර්මාණශීලි විය යුතුය.',
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
            '3. කතාවේ මැදට dialogue කිහිපයක් එකතු කිරීම අත්‍යවශ්‍ය වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'එවිට කතාවේ active ගතිය වැඩි වේ.',
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
            'Folk story start කිරීම ',
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
            ' 1. Once upon a time, there was a man called Andare.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (එකමත් එක කාලෙක අන්දරේ කියලා මනුස්සයෙක් හිටියා.)',
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
            'වෙනත් කතාවක් ආරම්භ කරනවිට ඒ අවස්තාව, දිනය ආදිය පිළිබඳව විස්තර කිරීමක් සිදු කරන්න.',
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
            ' It was a Sunday evening. I was in my bedroom reading a book. Suddenly I heard a big noise. I thought it was an accident. Then I saw some people were rushing on the road. \'A bomb, A bomb\' People were screaming. I was stick for a moment. .............................',
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
            'බලන්න. මේ ආකාරයට කතාවක් ලිවීමේදී curiosity ඇති නිසා කියවන්නා ආකර්ෂණය කර තබා ගත හැකිය.',
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
            'story writing වලදී එය සත්‍ය කතාවක් හෝ imagination එකක් විය හැකිය. නමුත් අර්ථවත් වීම ඉතා වැදගත්ය.',
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
