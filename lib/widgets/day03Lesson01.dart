import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day03Lesson01 extends StatelessWidget {
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
            'This, These, That, Those යන පද people, animal, things පෙන්වීමට යොදා ගනී. (point) මෙහිදී This, These ළඟ ඇති දෙයක් පෙන්වීමට  යොදා ගනී. That, Those දුර ඇති දේවල් පෙන්වීමට යොදා ගනී. මුලින්ම මේවායේ සිංහල තේරුම දැනගැනීමද ඉතා වැදගත්ය.',
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
            'This - මේක (singular)',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'These - මේවා (plural)',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'That - ඒක/ අරක (singular)',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Those - ඒවා/ අරවා (plural)',
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
            '  This is a mango tree.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (මේක අඹ ගසක්)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  These are mango trees.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (මේවා අඹ ගස්)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  That is a mango tree.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (අරක අඹ ගසක්)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Those are mango trees.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (අරවා අඹ ගසක්)',
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
          Divider(),
          Text(
            'Asking questions',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'මෙහිදී This is, These are, That is, Those are වල be verbs වන is, are වාක්‍යයේ මුලට යෙදිය යුතුය. Be verbs පිළිබඳව සවිස්තාත්මකව පාඩමක් ඉදිරියේදී විස්තර කෙරේ.',
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
            '  This is a mango tree.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Is this a mango tree?',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (මෙය අඹ ගසක්ද?)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  These are mango trees.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Are these mango trees?',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (මේවා අඹ ගස්ද?)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  That is a mango tree.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Is that a mango tree?',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (අරක අඹ ගසක්ද?)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Those are mango trees.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Are those mango trees?',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (අරවා අඹ ගස්ද?)',
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

          Divider(),
          //para
          Text(
            '"This "යන්න time and dates විස්තර කිරීමට ද යොදා ගනී.',
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
            '  this evening',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  this week',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  this afternoon',
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
            '  Lal is in India all this week.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (ලාල් මේ සතියේ ඉන්දියාවේ ඉන්නේ.)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Nishadi seemed very happy this afternoon.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (මේ මධ්‍යහනේ නිශාදි සතුටින් වගේ හිටියේ.)',
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
          //para
          Text(
            'This, that, these, those pronouns ලෙස යොදා ගනී.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Pronouns - I, You, We, They, He, She, It වේ. මේ පිළිබඳව හොද පැහැදිලි කිරීමක් ඉදිරියේදී අපගේ පාඩම් වැඩසටහන් වලින් සිදු කෙරේ.',
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
            '  We are going to eat first and then go to the cricket match. Are you happy with that?',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  මෙහි අර්ථය වන්නේ අපි පළමුව ආහාර ගෙන පසුව ක්‍රිකට් මැච් එකට යනවා.ඔබට ඒ ගැන සතුටුද?" යන්නයි. මෙහි that යන්නෙන් ඒ ගමන නියෝජනය වේ.',
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
            '  Please switch that off if you are not watching that? (TV එක සම්බන්ධයෙන්)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  මෙහිදී ' 'that' ' යන්නෙන් TV එක නියෝජනය වේ.',
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
            '  This is a great match.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  මේක හොද match එකක් ',
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
            '  That was a great game.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  ඒක හොද match එකක් ',
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
