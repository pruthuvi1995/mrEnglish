import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day01Lesson02 extends StatelessWidget {
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
            'Nouns',
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
            'Nouns මඟින් පුද්ගලයෙක්,ද්‍රව්‍යක් හෝ සතෙක් හඳුන්වයි.',
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
            '  Uncle',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Tree',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Country',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Dog',
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
            'සමහර nouns පුද්ගල නාමයක්, ස්ථාන නාමයක්, සත්ව නාමයක් හෝ ද්‍රව්‍ය නාමයක් වේ.',
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
            '  Anuradha',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Kurunegala',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Luci',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Lenavo',
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
            'ඒවා proper nouns ලෙස හැඳින්වේ.තවත් මෙම nouns විවිධ නිර්ණායක මත බෙදා තිබුනද මෙහිදී අපගේ අරමුණ වන්නේ ඉංග්‍රීසි විභාගයකින් (o/l) හොඳ ප්‍රතිපලයක් ලබා දීම වන බැවින් අවශ්‍ය කොටස් පමණක් ආවරණය කෙරේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Divider(),
          //main titles
          Text(
            'Countable / uncountable nouns',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'ඉංග්‍රීසි grammer ඉගෙන ගන්න කෙනෙක් ලෙස මේ පිළිබඳව ඔබ තුළ ඉතා හොඳ අවබෝධයක් තිබිය යුතුය. හේතුව වන්නේ පෙර පාඩමේ කියාදුන් articles \'a\', \'an\'යෙදීමේදී contable, uncountable nous වෙන්කර ගැනීමට ඔබට හැකිවිය යුතුය.',
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
            'countable nouns යනු ගැනිය හැකි නාම පද වේ. මේවා ඒක වචන හා බහුවචන ලෙස ආකාර 2කි. ඉදිර්යේදී ඉතා පැහැදිලිව ඒකවචන හා බහුවචන නාමපද ගැන පැහැදිළි පාඩමක් එකතු කර ඇත.',
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
            'uncountable nouns යනු ගණන් කළ නොහැකි නාම පද වේ. මේවාට ඒකවචන (singular) ස්වරූපය පමණක් පවතී.බහුවචන (plural) ස්වරූපයක් නැත.',
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
            '  rice',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  water',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  information',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  work',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  baggage',
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
            'මේවා ගැනිය නොහැකිය. එම නිසා පහත පරිදි වාක්‍ය තැනිය නොහැක.',
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
            '  I have one rice.',
            style: TextStyle(
              fontSize: size,
              color: Colors.red,
            ),
          ),
          Text(
            '  I have a work to do.',
            style: TextStyle(
              fontSize: size,
              color: Colors.red,
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
            'uncountable nouns සෑමවිටම singular (ඒකවචන) වන බැවින් a, an යෙදිය නොහැක.',
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
            'uncountable nouns පහත පරිදි වර්ග කිරීමෙන් ඔබට මතක තබා ගැනීම පහසු වනු ඇත.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Example: Food items (කෑම වර්ග) ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  sugar',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  rice',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  butter',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  soup',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  flour (පිටි)',
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
            'Example: Materials (ද්‍රව්‍ය) ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  leather',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  wool',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  bricks (ගඩොල්)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  stone',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  cloths (රෙදි) ',
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
            'Example: Liquids (දියර) ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  milk',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  water',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  oil',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  petrol',
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
            'Example: Household items (ගෙදර දොරේ ද්‍රව්‍ය)  ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  washing powder',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  toothpaste',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  shoe polish ',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  petrol',
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
            'Example: Travel items (සංචාරයට අවශ්‍ය ද්‍රව්‍ය)  ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  luggage',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  money',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  baggage',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  equipment(උපකරණ)',
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
            'uncountable nouns 1, 2, 3 ලෙස ගනින අයුරින් දැක්වීමට piece, item ලෙස දැක්විය යුතුය.',
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
            '  three items of furniture',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  two pieces of advice',
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
          //para with color letters
          Divider(),
          //main titles
          Text(
            'Verbs',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'ඉතාමත් සරලව හඳුන්වන්නේ නම් verbs යනු ක්‍රියා පද වේ. මේ මඟින් ක්‍රියාවක් නිරුපණය කරයි. සෑම english sentence එකකම verbs ඇත. ඉංග්‍රීසි භාෂාවේදී යම් වාක්‍යක් present හෝ past ලෙස පෙන්වන්නේ verbs වල වෙනස් වීම අනුවය.',
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
            'verbs, auxiliary verbs, lexical verbs, modal verbs, non-modal verbs ලෙස විවිධ ආකාර තිබුනද ඔබගේ අධ්‍යනය කටයුතු සඳහා ඒ සියල්ල ගැන කතා කිරීම අවශ්‍ය නැත.අවශ්‍ය කොටස් පමණක් ඉදිරියේදී විස්තර කෙරේ.',
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
