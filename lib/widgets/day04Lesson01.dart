import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day04Lesson01 extends StatelessWidget {
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
            'Adjectives නාම විශේෂණ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'adjectives මගින් nouns හෝ pronouns විස්තර කෙරේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'He is a boy.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'මෙහිදී ඔහු පිරිමි ළමයෙක් යන අර්ථය ලැබේ. නමුත් එහි විශේෂත්වයක් නැත. Adjectives නැත.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'He is a fat boy.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'මෙහි අරුත ඔහු මහත ළමයෙකු යන්නයි. \" ළමයා \" යන්න \"මහත\"  යන්නෙන් විස්තර කෙරේ. boy යන්න noun එකයි. එය විස්තර කරන්නේ fat යන්නෙන් බැවින් එය adjective එක වේ.',
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
            'පහත වාක්‍යය වල adjective,  කොළ වර්ණයෙන් දක්වා ඇත.',
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
          RichText(
            text: TextSpan(
              text: 'The ',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'brown',
                  style: TextStyle(
                    fontSize: size,
                    color: Colors.green,
                  ),
                ),
                TextSpan(
                  text: ' dog bit me yesterday.',
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'She is carring a ',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'heavy',
                  style: TextStyle(
                    fontSize: size,
                    color: Colors.green,
                  ),
                ),
                TextSpan(
                  text: ' bag.',
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'They have built a ',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'beautiful',
                  style: TextStyle(
                    fontSize: size,
                    color: Colors.green,
                  ),
                ),
                TextSpan(
                  text: ' house.',
                ),
              ],
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
            'මෙහිදී සැමවිටම අදාළ adjective එක noun එකට කලින් යෙදෙන වචනය ලෙස ඔබ වැරදි වැටහීමක් ඇති කර ගනීවි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'My brother is clever.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'මෙහිදී මගේ සහෝදරයා දක්ෂ බව ප්‍රකාශ කෙරේ. එහිදී clever යන්න brotherට කලින් යෙදී නැත.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'එසේනම් ඔබ පැහැදිලිව දැනගත යුත්තේ adjective එක වාක්‍යක පිහිටීම අපට කටපාඩම් නොකළ හැකි අතර අර්ථය අවබෝධ කර ගැනීම වැදගත් වේ. එනම් එක විස්තර කරන වචනය adjective එකක් යන්නයි.',
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
            'English language වලදී විවිධාකාරයේ adjectives භාවිතා වේ.',
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
            '1. Numeric (සංඛ්‍යාත්මක)',
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
            '  five, ten, two, hundred',
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
            '2. Quantitative (ප්‍රමාණාත්මක)',
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
            '  	some, more, all ',
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
            '3. Qualitative (ගුණාත්මක)',
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
            '  size, smell, colour ',
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
            '4. Possessive (අයිතිය)',
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
            '  his, their, my',
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
            '5. Interrogative',
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
            '  which, whose, what',
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
            '6. Demonstartive ',
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
            '  this, that, these, those',
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
            'ඉහත adjectives ආකාරවලට අදාළවම උදාහරණ කීපයක් දක්වා ඇත.',
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
            'My father has two bicycles.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Some Sri Lankans meditate on Poya days',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'My laptop is white.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'This is his daughter.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'That mountain is very beautiful.',
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
            'මීට අමතරව adjectives, positive, comparative සහා superlative ලෙස ආකාර 3කි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Positive - adjective වල සාමාන්‍ය ස්වරූපය ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Comparative - යම් adjective එකක් සම්බන්ධව object 2ක් සැලකීමේදී සංසන්ධනාතමක්ව වැඩි යන්න.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Superlative - අදාළ adjective එක සම්බන්ධව objects ගොඩක් සැලකීමේදී එයින් ප්‍රබලම යන්නයි.',
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
            'උදාහරණයක් සලකමු. ගැහැණු ළමයි 3න් දෙනෙක් සිටී.ඔවුන්ගේ කොණ්ඩා වල දිග සළකමු.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '   Long (දිගයි) - positive ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '   Longer (වඩා දිගයි) - comparative',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '   Longer (වඩාත් දිගයි) - comparative',
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
            'සාමාන්‍යයෙන් අපි භාවිතා කරන්නේ positive adjectives  ය. නමුත වඩා, වඩාත් ලෙස අදහස් කිරීමට comparative හා superlative භාවිතා කල යුතුය.',
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
            'සෑම adjective එකකටම පාහේ මේ ආකාරයට අවස්ථා 3ක් ඇත. ඒවා මතක තබා ගැනීමේ පහසුවට පහත ආකාරයට පුරුදු වන්න.',
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
            'බොහෝවිට comparative අවස්ථාවේදී erද superlative අවස්ථාවේදී estද යෙදේ.',
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
            '  fast -> faster -> fastest',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  long -> longer -> longest',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  tall -> taller -> tallest',
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
            'Positive adjective එක y වලින් අවසන් වන විට comparative ලිවීමේදී y ඉවත් කර ier ද superlative ලිවීමේදී y ඉවත් කර iest ද යෙදේ.',
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
            '  happy -> happier -> happiest',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  pretty -> prettier -> prettiest',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  dirty -> dirtier -> dirtiest',
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
            'ඉහත ළමුන් තිදෙනාගේ කොන්ඩවල දිගට අදාළ උදාහරණය ගමු.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  A ගේ කොණ්ඩය දිගයි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  B ගේ කොණ්ඩය Aට වඩා දිගයි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  කොණ්ඩය දිගම C ගේ වේ.',
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
            'මෙහිදී comparative යෙදීමේදී මොකට සපෙක්ෂවද යන්න දැක්වීමට than යෙදිය යුතුය.',
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
            '  Hair of B is longer than A\'s.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  B ගේ කොණ්ඩය A ට වඩා දිගයි.',
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
            'Superlative යෙදීමේදී the article යෙදිය යුතුය.',
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
            '  C has the longest hair.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  දිගම කොණ්ඩය ඇත්තේ C ටය.',
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
            'අදාළ adjective එකට අකුරු 6කට වඩා ඇතිවිට comparative හා superlative ලිවීමේදී more, most පිළිවෙලින් දේ.',
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
            '  beautiful -> more beautiful -> most beautiful',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  attractive -> more attractive -> most attractive',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  helpful -> more helpful -> most helpful',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  dangerous -> more dangerous -> most dangerous',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  enjoyable -> more enjoyable - most enjoyable',
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
            '  Nirosha is beautiful.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (නිරෝෂා ලස්සනයි.)',
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
            '  Natasha is more beautiful than Nirosha.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (නටෂා නිරෝශාට වඩා ලස්සනයි.)',
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
            '  Senuri is the most beautiful.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (සෙනුරි තමයි ඔවුන්ගෙන් වඩාත්ම ලස්සන.)',
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
            'සමහර විශේෂ adjectives කිහිපයක් ඇත. මෙහිදී positive, comparative හා superlative එකිනෙකට වෙනස් වේ.',
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
            '  good -> better -> best',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  bad -> worse -> worst',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  far -> further -> furthes',
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
            '  This is a good answer.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  මේක හොද උත්තරයක්',
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
            '  This is a better answer than the previous.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '   මේ උත්තරය පෙර උත්තරයට වඩා හොදයි.',
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
            '  That is the best answer.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  අරක තමයි හොදම උත්තරය.',
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
            'Adverbs',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'Adverbs යනු ක්‍රියා විශේෂණ වේ. බොහෝ අය පවසන පරිදි adverbs මගින් verbs විස්තර කරන බව පැවසුවද ඊටවඩා ගැබුරින් adverbs ගැන අධ්‍යනය කළ යුතුය.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Susanthika runs fast.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'මහිදී සුසන්තිකා වේගයෙන් දුවන බව අදහස් කෙරේ. verb (ක්‍රියා පදය) වන්නේ run යන්නයි.එය fast වලින් විස්තර කෙරේ.එමනිසා fast යන්න adverb වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'ඉහත දැක්වුයේ adverbs වල එක යෙදීමක් පමණි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'සත්‍ය වශයෙන්ම adverbs වලින් සිදුවන්නේ verbs, adjectives හෝ වෙනත් adverbs වෙනස් කිරීමයි. (modify)',
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
            'She swims quickly.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'ඇය වේගයෙන් පිහිනනවා. verb 1 modify කරයි.',
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
            'He is an extremely fast driver.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'ඔහු ගොඩක්ම වේගවත් රියදුරෙක්. මෙහිදී extremely යන්නෙන් fast යන්න විස්තර කෙරේ. එනම් extremelyයන්න adverb වේ.එය adjective (fast) modify කෙරේ.',
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
            'He swims extremely quickly.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'ඔහු පීනන්නේ අදික ඉක්මනින්ය. මෙහිදී quickly යන්න adverb වේ.එයextremely  යන adverb මගින් කෙරේ.',
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
            'Adverbs මගින් යම් ක්‍රියාවක් කෙසේ, කවදද, කොහෙදිද, කොතරම් කාලයකට සැරයක්ද ආදිය විස්තර කෙරේ. (how, when, where, how often, how much)',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Example: How',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  My sister drives slowly.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (මගේ සහෝදරිය රිය පදවන්නේ සෙමින්.)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  He opened the gift carefully.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (ඔහු තෑග්ග පරෙස්සමින් විවෘත කළා.)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  When you talk to him talk quickly.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (ඔහු සමඟ කතා කරනවිට ඉක්මනින් කතා කරන්න.)',
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
            'Example: When',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  I want to post a letter today.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (මට ලියුමක් අද තැපැල් කරන්න අවශ්‍යයි.)',
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
            'Example: Where',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  Bring it here.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  I live there.',
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
            'Example: How often (කොතරම් කාලයකට සැරයක්ද?)',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  You always complain',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (ඔයා නිතරම පැමිණිලි කරනවා.)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Nimesh sometimes lies.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (නිමේෂ් සමහරවිට බොරු කියනවා.)',
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
            'Example: How much (කොපමණ)',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  Don\'t work too hard.',
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
            'බොහෝවිට adverbs ly වලින් අවසන් වේ.',
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
