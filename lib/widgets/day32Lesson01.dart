import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day32Lesson01 extends StatelessWidget {
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
            'මෙය සරලව \'වාර්තාමය කථනය\' ලෙස හඳුන්වන අතර indirect speech ලෙසද හැඳින්වේ. ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'English grammer පිළිබඳව සැලකීමේදී ඉතාමත් සංකීර්ණ හා පැටලිලි සහගත කොටසක් ලෙස reported speech හැඳින්වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'ඔබගේ පහසුව උදෙසා ඉතාමත් සරලව උදාහරණ සහ පින්තූර සහිතව මෙය විස්තර කර ඇත.',
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
            'Reported speech යනු කුමක්ද ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
              fontWeight: FontWeight.bold,
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
            'දෙදෙනෙකු හෝ දෙපිරිසක් අතර ඇතිවන කතා බහක් තුන්වන පාර්ශවයකට ප්‍රකාශ කිරීම.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Image.asset(
            'assets/images/day32Lesson01N1.JPG',
            fit: BoxFit.fitHeight,
            height: getProportionateScreenHeight(200),
            width: double.infinity,
          ),
          Image.asset(
            'assets/images/day32Lesson01N2.JPG',
            fit: BoxFit.fitHeight,
            height: getProportionateScreenHeight(200),
            width: double.infinity,
          ),
          Text(
            '',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Reported speech ආකාර මොනවාද?',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
              fontWeight: FontWeight.bold,
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
            'ප්‍රධාන වශයෙන් ආකාර දෙකකි.',
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
            ' 1. Present expression (වර්තමාන ප්‍රකාශ) ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            ' 2. Past expression (අතීත ප්‍රකාශ) ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Divider(),
          Text(
            'Present expression',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            '',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            ' නිශාන්ති කියනවා \' මම හොඳ කියවන්නෙක්\'. - direct speech',
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
            'නිශාන්ති කියනවා එයා හොඳ කියවන්නෙක්ලු. - reported speech',
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
            'මෙහිදී reported speech ඉගෙනීමට පෙර ඔබ අදාළ සිද්ධිය imagine කර ඔබ එම ස්ථානයේ අදාල සිද්ධියේ චරිතයක් ලෙස සිතා ප්‍රකාශ ඉදිරිපත් කිරීම ගැන සැලකිලිමත් විය යුතුය.',
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
            'Example: ',
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
            ' Kamala says \'I am a good reader.\'.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            ' (කමළා කියනවා \'මම හොඳ කියවන්නෙක්\'.)',
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
            'මෙය indirect speech කිරීමේදී කමළා කියනවා ඇය හොඳ කියවන්නෙක් කියලා ලෙස වෙනස් විය යුතුය.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Reported speech කිරීමේදී පළමුව says හෝ say ඇති දැයි බලන්න. ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'එසේ තිබුණහොත් සතුටුවන්න. මොකද ඉතා සුළු නීතීන් කිහිපයක් පමණක් අඩංගු වන නිසා.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Present expression වලදී වෙනස් වන්නේ pronouns ය. ඉහත උදාහරණය සැලකීමේදී ',
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
            ' Kamala says that she is a good reader.',
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
            'Example: ',
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
            ' Chamil says \'I have a girl friend in my mother\'s village\'.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            ' (චමිල් කියනවා \' මගේ අම්මගේ ගමේ මට පෙම්වතියක් ඉන්නවා\')',
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
            'Reported speech ලිවීමේදී මෙය චමිල් කියනවා ඔහුට ඔහුගේ මවගේ ගමේ පෙම්වතියක් ඉන්නවාලු ලෙස වෙනස් විය යුතුය.',
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
            ' Chamil says that he has a girl fiend in his mother\'s village.',
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
            'ඉතාම වැදගත් කාරනාවක් වන්නේ normal expressions වලදී indirect කිරීමට පෙර that යෙදිය යුතුමය.',
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
            'Malith විසින් Sanjuට පැවසු දෙය Sanju විසින් Shashini ට පවසන විදිය සලකමු.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Image.asset(
            'assets/images/day32Lesson01N3.JPG',
            fit: BoxFit.fitHeight,
            height: getProportionateScreenHeight(200),
            width: double.infinity,
          ),
          Image.asset(
            'assets/images/day32Lesson01N4.JPG',
            fit: BoxFit.fitHeight,
            height: getProportionateScreenHeight(200),
            width: double.infinity,
          ),
          Text(
            '',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'මලිත් කියනවා ඔහුගේ මව ඔහුට දෙමළ උගන්වනවලු.',
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
            ' Direct -> Malith says \'My mother teaches me Tamil\'.',
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
            ' Indirect -> Malith says that his mother teaches him Tamil.',
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
