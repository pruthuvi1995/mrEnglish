import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day28Lesson01 extends StatelessWidget {
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
            'Relative Pronouns',
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
            'Relative pronouns, nouns පැහැදිලි කිරීම සඳහා යොදා ගනී. ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'විශේෂයෙන්ම වාක්‍ය දික් කිරීමේදී ඡේදයක් කියවා එහි අරුත අවබෝධ කරගැනීමට මෙය ඉතා වැදගත්ය.',
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
            'Relative pronouns ඉතා ගැඹුරු english grammer කොටසක් වුවද ඔබට අවශ්‍ය මුලික කොටස ඉතා සරලව ඉදිරිපත් කර ඇත.',
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
            'Relative pronouns are',
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
            '1. Subject (කතෘ) - who, which, that',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '2. Object (කර්මය) - who/ whome, which, that',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '3. Possessive (අයිතිය) - whose',
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
            'අපි relative pronouns යොදන්නේ relative clauses ඉදිරිපත් කිරීම සඳහාය.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Relative clauses මඟින් nouns විස්තර කරන අයුරු දැන් සලකා බලමු.',
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
            '1. who - මිනිසුන් විස්තර කිරීමට යොදා ගනී.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '2. which - ද්‍රව්‍ය හා සතුන් විස්තර කිරීමට යොදා ගනී.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '3. that - ඉහත ඕනෑම අවස්ථාවක යොදා ගනී',
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
            '  Marie Curie is the lady who discovered radium.',
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
            'මෙහිදී relative pronoun වන්නේ who වේ. ඒ මඟින් එයට කලින් ඇති noun විස්තර කෙරේ.',
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
            '  (මෙහි අර්ථය වන්නේ මාරි කිව්රි තමයි කාන්තාව මොන කාන්තාවද රේඩියම් සොයා ගත් කාන්තාව.)',
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
            '  This is the dog which bit me yesterday.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (මේ තමයි බල්ලා මොන බල්ලාද ඊයේ මාව කාපු බල්ලා.)',
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
            'ඉහත අවස්ථා 2 සඳහාම who, which වෙනුවට that යෙදිය හැකිය.',
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
            'Example:',
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
            '  He is the person who won the lottery price this time.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  (ඔහු තමයි මෙවර ලොතරැයිය දිනපු මිනිහා.)',
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
          Divider(),
          Text(
            'Definite and non-definite relative clauses.',
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
            'Relative clause එක මඟින් ඒ අදාළ පුද්ගලයා, සතා හෝ අවස්තාව පිළිබඳව අතිරේක තොරතුරක් ලබාදෙන විට ඒවා non definite reltive clauses ලෙස හැඳින්වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'එවිට එම අතිරේක තොරතුර comma මඟින් වෙන්කළ යුතුය. මෙම කොටස ඉවත් කලද පැහැදිලි අර්ථයක් සහිත වාක්‍යක් ගොඩ නැගිය හැකිය.',
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
            '  Mr. Silva, who is 60, has just retired.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  (මෙහි අවුරුදු 60ක් වන සිල්වා මහතා විශ්‍රාම ගෙන තියනවා යන්න අර්ථවත් වේ.)',
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
            'මෙහිදී \'අවුරුදු 60ක්\' යන්න අමතර කාරනාවක් බැවින් එය comma  මඟින් වෙන්කර තැබිය යුතුය.',
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
            '  This boy who won the first place in drama competition is in my sister\'s class.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  (මෙහි අරුත වන්නේ \'නාට්‍ය තරඟයේදී පළමු තැනගත් කොල්ලා ඉන්නේ මගේ සහෝදරියගේ පන්තියේ.\')',
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
            'මෙහි අතිරේක වාක්‍ය කොටස් නොමැත.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'එක කොටසක් හෝ ඉවත් කළහොත් පැහැදිලි අර්ථයක් ගත නොහැකි බැවින් මේවා definite relative clauses වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'comma යෙදෙන්නේ නැත. මෙහිදී ඔබ මතක තබාගත යුත්තේ non-definite වනවිට that නොයෙදීමයි.',
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
