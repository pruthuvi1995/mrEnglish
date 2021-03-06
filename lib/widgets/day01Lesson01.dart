import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day01Lesson01 extends StatelessWidget {
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
              fontSize: getProportionateScreenHeight(20),
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'ඉංග්රීසි භාෂාවේ a, an, the ලෙස article 3ක් ඇත. එයින් `the` article යම්තාක් දුරකට සංකීර්න නිසා article part(2) ලෙස ඉදිරියේදී මෙම app එක හරහා ඔබ අතට පත්වනු ඇත.',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            'a, an යන්නේ සරල තේරුම \'එකක්\' යන්නයි. Noun (නාම පද) එකකට කලින් යෙදිය යුතුය. a  සහ  an  වල වෙනස යම් තාක් දුරකට ඔබ අසා ඇත. නමුත් ඔබ බොහෝ දෙනා අසා ඇති නීතිය යම් තාක් දුරකට අසත්ය වේ. බොහෝ අය සිතන්නේ අදාළ noun එක vowel(a, e, i, o, u)  අකුරකින් ආරම්භ වේ නම් an ද  වෙනත් අකුරකින් ආරම්භ වේ නම් a ද ලෙස article යොදන බවයි.',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'ඔබ ඉතා පැහැදිලිව අවබෝධ කරගත යුතු වන්නේ අදාළ noun එක',
              style: TextStyle(
                fontSize: getProportionateScreenHeight(15),
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' vowel ශබ්දයකින්',
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(15),
                    color: Colors.green,
                  ),
                ),
                TextSpan(
                  text:
                      ' ආරම්භ වේ නම් පමණක් an article එකද එසේ නොවන අවස්ථාවල a article ද යෙදිය යුතු බවයි.',
                ),
              ],
            ),
          ),
          Divider(),
          Text(
            'Article usage',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            '\'A\' article භාවිතා කරන්නේ ,',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            '',
          ),
          Text(
            '(1) vowel  නොවන (consonant) අකුරකින් ඇරබෙන වචනයකට කලින්',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            'Example: ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            '  A bag',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '  A tiger',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '  A teacher ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '',
          ),
          Text(
            '(2) Countable noun (ගැනිය හැකි ) singular (ඒක වචන ) නාම පදයකට කලින්,',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            'Example: ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            '  A mango ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '  A banana ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '  A vegetable ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '',
          ),
          Text(
            '(3) අපි යම් දෙයක් ගැන පළමු වතාවට කථා කරන විට,',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            'Example: ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            '  I saw a lion.  ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '',
          ),
          Text(
            '(4) පළමු අකුර vowel  වූවද ශබ්දය vowel නොවන විට,',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            'Example: ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            '  A university ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '  A uniform  ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '  A european',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '',
          ),
          Text(
            '\'An\' article භාවිතා කරන්නේ ,',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            '',
          ),
          Text(
            '(1) Vowel ශබ්දයකින් ආරම්භ වන noun සමග,',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            'Example: ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            '  an orange',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '  an ant ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '  an umbrella',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '',
          ),
          Text(
            '(2) ආදාල වචනය h වලින් ආරම්භ වුවද වචනය ශබ්ද කිරීමේදී `h` silent (නිශ්ශබ්දව) වී අදාල ශබ්දය vowel වලින් ඇරබෙන විට,',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            'Example: ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            '  An honest man  ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '  An hour ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '',
          ),
          Text(
            'Special case',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.purple,
            ),
          ),
          Text(
            '',
          ),
          Text(
            '(1) Uncountable noun  එකකට කලින් a , an  යෙදිය නොහැක.',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            'Example: ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.black,
            ),
          ),
          Text(
            '  water  ',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
          Text(
            '  sugar',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(15),
              color: Colors.blue,
            ),
          ),
        ]),
      ),
    );
  }
}
