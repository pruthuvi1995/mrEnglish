import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day07Lesson02 extends StatelessWidget {
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
            'English language වල ඉතාමත් වැදගත්ම කොටස වන්නේ tenses ය.සෑම විටම මගේ සිසුනට පවසන පරිදි english language ගොඩනැගිල්ලක් නම් එහි foundation වන්නේ tenses ය.ගොඩනැගිල්ලේ ශක්තිමත් බව ,කල් පැවැත්ම ,අලුතින් අංග එකතු කිරීම යන සියල්ල foundation මත තීරණය වේ. ඒ පරිද්දෙන්ම ඉංග්‍රීසි භාෂාවේ හැදෑරීම,ලිවීම,කථනය ,තේරුම් ගැනීම යන සියල්ලම tenses මත තීරණය වේ.ඔබට O/L english වලට C සාමථර්යකින් ඉහළට යාමට අවශ්‍යය නම් ඉතාමත් වැදගත්ය.',
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
            'English language වල tenses 12ක් ඇත.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'ප්‍රධාන tenses types 4ක් තිබේ.ඒවා නම්,',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Simple tense',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Continuous tense',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Perfect tense',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Perfect continuous tense',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'එසේ නම් tenses 12 සැදෙන්නේ කෙසේද ?',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '4 x 3 = 12',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'මෙහිදී 3 න් අදහස් කරන්නේ කුමක්ද? Present, past, future යන්නයි.එනම් සෑම tense type එකක්ම වර්තමාන,අතීත ,අනාගත ලෙස බෙදේ.උදාහරණයක් ලෙස',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Simple present tense',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Simple past tense',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Simple future tense',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Divider(),
          Text(
            'Pronouns',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'Tenses ඉගෙන ගැනීමේදී ඊට ප්‍රථමයෙන් ඉගෙන ගත යුතු ප්‍රධානම මාතෘකාව වන්නේ pronouns (සර්ව නාම )වේ.එයට හේතුව වන්නේ මේ ලෝකයේ ඇති සියලුම nouns වලට අදාලව tenses යෙදිය යුතු වීමයි.නමුත් මේ ලෝකයේ nouns ගැනිය නොහැකි තරම් ප්‍රමාණයක් පවතින නිසා එකිනෙකට වෙන වෙනම tenses ලිවීම කල නොහැකි දෙයකි.',
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
            'එමනිසා ඉංග්‍රීසි භාෂාවේ සියලුම nouns අඩංගු වන ලෙස group 7ක් හඳුන්වා දී ඇත.එනම්,',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  I - මම ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  You - ඔබ/ඔබලා ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  We - අපි',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  They - ඔවුන්/ඒවා',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  He - ඔහු',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  She - ඇය',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  It - ඌ /ඒක',
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
            'මෙම කණ්ඩායම් 7ට ලොව ඇති සියලු nouns අන්තර්ගත වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'උදාහරණ :',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'ගුරුවරු(teachers) - they ට අයත් වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'මගේ පියා(my father) - Heට අයත්ය ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'දුරකථනය(phone) - Itට අයත්ය.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'බෝතල්(bottles) - Theyට අයත් වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Divider(),
          Text(
            'simple present tense ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'english language වලදී simple present tense අවස්ථා 2කදී භාවිත වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'daily routine (එදිනෙදා  ජීවිතයේ  දේවල්)',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'General things (ස්වභාවධර්මයේ සිදුවීම්)',
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
            'මෙහිදී simple present tense වලට අදාළව වාක්‍යක් ගොඩනගන අයුරු බලමු.',
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
            'Subject (කතෘ) + Verb (ක්‍රියා) + Object (කර්මය)',
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
            'I make cakes.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '(මම කේක් හදනවා.)',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  මෙහිදී මම (I) -> subject වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  හදනවා (make) -> verb වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  කේක් (cake) -> object වේ.',
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
            'මෙහිදී pronouns වලට අදාලව එම වාක්‍ය ගොඩනගන අයුරු බලමු.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  I, You, We, They -> simple present tenseවලදී බහුවචන වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  He, She, It -> simple present tense වලදී එකවචන වේ.',
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
            'Simple present වලදී කතෘ බහුවචන වන විට සාමාන්‍ය verb එකම යොදන අතර කතෘ ඒකවචන වන විට හි අගට s ශබ්දයක් යෙදේ.වැදගත්ම කරුණ වන්නේ බොහෝදෙනෙක් මෙය s අකුරක් ලෙස සිතීමයි.නමුත් එය වැරදිය.හේතුව වන්නේ  s, es, ies යන ආකාර 3ම යෙදෙන අවස්ථා ඇත.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  I, You, We, They -> make cakes',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  He, She, It -> makes cakes',
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
            'verb අවසන් වන්නේ ss, sh, ch, x, z වලින් නම් ඒකවචන කතෘ සමඟ verb එක අගට යෙදෙන්නේ s නොව es ය.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'kiss -> kisses',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'watch -> watches',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'buzz -> buzzes',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'fix -> fixes',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'splash -> splashes',
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
            'verb o වලින් අවසන් වන විට කතෘ ඒකවචන නම් verb අගට es යෙදේ .',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'go -> goes',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'do -> does',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'solo -> soloes',
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
            'verb අවසන් වන්නේ y වලින් නම් එයට කලින් අකුර consonant (vowel නොවන)විට y ඉවත් කර ies එකතු කල යුතුය.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'dry(වියලනවා) -> dries',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'dry(වියලනවා) -> dries',
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
            'yට කලින් අකුර vowel වන බැවින් y ඉවත් කර ies එකතු කිරීමක් සිදු නොවේ. s එකතු  වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'play + s -> plays',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Divider(),
          Text(
            'Negative form',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'නැත අර්ථය ලිවීමේදී not යෙදිය යුතුමය. මෙහිදී subject එක plural නම් ලෙසද singular නම් does not ලෙසද යෙදිය යුතුය.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '........... කිරි බොන්නේ නැත.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'I, You, We, They -> do not drink milk',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'He, She, It -> does not drink milk',
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
            'මෙහිදී කතෘ ඒකවචන විට ක්‍රියාවේ අගට s ශබ්දය යෙදුනද negative form වලදී යෙදෙන බැවින්  ක්‍රියාපදයේ අගට s ශබ්දය නොයෙදේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          )
        ]),
      ),
    );
  }
}
