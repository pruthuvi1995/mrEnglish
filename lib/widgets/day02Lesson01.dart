import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day02Lesson01 extends StatelessWidget {
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
          //para
          Text(
            'singular nouns (ඒක වචන නාමපද) plural forms (බහු වචන නාම පද) බවට හැරවීමේ එකම ක්‍රමය singular naunහි අගට s අකුර යෙදීම බව බොහෝ දෙනාගේ අදහසයි. නමුත් English language ගැන යම් අවබෝධයක් ඇති අයෙක් මෙහි නීති හතක් ඇති බව වටහා ගත යුතුය. මෙම පාඩමේදී එම ක්‍රම හතම ඉතාමත් සරලව පැහැදිලි කර ඇත.',
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
            '(1) බොහෝවිට singular nouns, plural කිරීමේදී singular nounහි අගට s අකුර යොදයි.',
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
            '  dog -> dogs',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  house -> houses',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  a teacher -> teachers',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  a sister -> sisters',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  ',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),

          //2
          Text(
            '(2) sigular noun අවසන් වන්නේ s, sh, ch, x, z නම් එය plural කිරීමේදී sigular noun අගට es යෙදිය යුතුය.',
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
            '  bus -> buses',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  wish -> wishes',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  watch -> watches',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  box -> boxes',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  quiz -> quizes',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  ',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),

          //3
          Text(
            '(3) \'o\' වලින් අවසන් වන සමහර singular nouns plural කිරීමේදීsingular nounහි අගට \'es\' එකතු කරයි.',
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
            '  mango -> mangoes',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  tomato -> tomatoes',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  potato -> potatoes',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  hero -> heroes',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  ',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            'මෙය මතක තබා ගැනීමට කෙටි ක්‍රමයක් ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'වීරයා අඹ ගහට නැගලා අර්තාපලුයි, තක්කලියි කනවා.',
            style: TextStyle(
              fontSize: size,
              color: Colors.purple,
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
            'නමුත් අනෙකුත් අවස්ථාවලදී \'o\' වලින් අවසන් වන singular nouns, plural කිරීමේදී \'es\' නොව \'s\' එකතු කරයි.',
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
          //4
          Text(
            '(4) මෙය ටිකක් පැටලිලි සහගත බැවින් පැහැදිලිව අවබෝධ කරගන්න. Singular noun අවසන් වන්නේ \'y\' වලින් නම් එයට කලින් අකුර බලන්න. එය vowels (a, e, i, o, u) නොවේනම් \'y\' ඉවත් කර \'ies\' එකතු කරන්න.',
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
            '  lady (\'d\' vowel නොවේ.) -> ladies',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  baby -> babies',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  city -> cities',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  fly -> flies',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  ',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            'y වලට කලින් අකුර vowel නම් \'ies\' එකතු නොකර \'s\' එකතු කළ යුතුය. මෙහිදී \'y\' ඉවත් නොවේ.',
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
            '  toy -> toys',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  kidney -> kidneys',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  ',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),

          //5
          Text(
            '(5) singular noun අවසන් වන්නේ \'fe\' හෝ \'f\' වලින්නම් \'f\' හෝ \'fe\' ඉවත් කර ඒ වෙනුවට \'ves\' එකතු කරයි.',
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
            '  leaf -> leaves',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  calf -> calves',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  knife -> knives',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),

          Text(
            '  ',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),

          //6

          Text(
            '(6) සමහර singular noun වලට අදාළ plural form එකිනෙකට හාත්පසින්ම වෙනස් වේ.',
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
            '  child -> children',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  man -> men',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  woman -> women',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  goose -> geese',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  mouse -> mice',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  foot -> feet',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  ',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),

          //7
          Text(
            '(7) යම් අවස්ථාවල singular සහා plural forms එකිනෙකට සමාන වේ. ',
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
            '  sheep -> sheep',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  deer -> deer',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  fish -> fish',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  species -> species',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  ',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
        ]),
      ),
    );
  }
}
