import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day08Lesson01 extends StatelessWidget {
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
          //para
          Text(
            'අතීතයේ සිදුවූ යමක් විස්තර කිරීමට මෙය යොදයි.',
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
            'මම ගිය සතියේ වාහනයක් මිලදී ගත්තා.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'මෙහිදී ක්‍රියා පදයේ අතීත ස්වරූපය භාවිත කල යුතුය.',
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
            'Simple past tense ගැන කතා කිරීමට පෙරාතුව ක්‍රියා පදවල (Verb) ස්වරූපය (Form) ගැන කතා කිරීම අවශ්‍ය වේ. ඉංග්‍රීසි භාෂාවේ ඕනෑම ක්‍රියාපදයක් ප්‍රධාන ආකාර 3 කින් ඇත. ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  Infinitive (සාමාන්‍ය ස්වරූපය)',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  Past (අතීත ස්වරූපය)',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  Past participle (අතීත කෘදන්තය)',
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
            'ඔබ ඉංග්‍රීසි බස ඉගෙනීමේදී මේ Verb Form  3 දැන ගත යුතුය.ඒවා කටපාඩම් කිරීම ඉතා අපහසු බැවින් යම්තාක් දුරට සරල ක්‍රමයක් කියා දීමට කැමතිය. මෙම  Verb Form  3 ඉගෙන ගැනීමේදී ආකාර 3කට මතක තබා ගන්නට වෑයම් කරන්න.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Divider(),
          Text(
            '1) ස්වරූප 3ම සමාන වේ.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'cut -> cut -> cut',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'put -> put -> put',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'hit -> hit -> hit',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'read -> read -> read',
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
            'මේ දැක්වූයේ  English Language වල එදිනෙදා භාවිත වන verbs  කීපයකි.මීට අමතරව තවත්  verbs තිබිය හැක.ඒ පිළිබඳවද සොයා බලන්න.මේ නීතිය අනුගමනය කරන්නේ ඉතා සුළු verbs ප්‍රමාණයකි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Divider(),
          Text(
            '(2)  සාමාන්‍ය ස්වරූපයට ed එකතු වීමෙන් අතීත (Past) හා අතීත කෘදන්ත (Past Participle) ලැබේ.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'play -> played -> played',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'kill -> killed -> killed',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'repair -> repaired -> repaired',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'watch -> watched -> watched',
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
            'ක්‍රියාවේ අගට e යෙදෙන විට  Past හා Psat Participle වලදී  \'d\' පමණක් එකතු වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'dance -> danced -> danced',
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
            'සමහර අවස්ථාවලදී  verb  "y" වලින් අවසන් වන විට  y ට කලින් අකුර  vowel එකක් නොවේ නම්  y ඉවත් කර  ied එකතු වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'carry -> carried -> carried',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),

          Divider(),
          Text(
            '3) verb forms 3 එකිනෙකට වෙනස් වේ.මේවා irregular verbs වේ.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'speak -> spoke -> spoken',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'take -> took -> taken',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'drive -> drove -> driven',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'hide -> hid -> hidden',
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
            'English language හි වැඩිම වශයෙන් භාවිත වන්නේ මේ 3 වන ආකාරයයි.එමනිසා ඒවා කටපාඩම් කර ගැනීම වැදගත්  වේ.',
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
            'දැන් අපි  simple past tense භාවිතයෙන් වාක්‍ය සාදමු.මෙහි විශේෂත්වය වන්නේ  verb එක ලෙස  past verb භාවිත කිරීමයි.',
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
            'මම ඊයේ පීසා කෑවා .',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'කෑවා යන්නට අදාළ verb එක ate වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'I ate Pizza yersterday.',
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
            'මම මුදල් වැය කලා.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'I spent money',
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
            'මෙම tense pattern එක   simple present tense වලට වඩා පහසුය.හේතුව වන්නේ කතෘ කවුරු වුවත් ක්‍රියාවට යොදන්නේ එකම  past verb එක වීමයි.',
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
            '  I/ You/ We/ He/ She/ It/ They bought a laptop',
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
            '',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'මෙම tense pattern හොඳින් පුරුදු වීමට ඔබගේ ඊයේ දින චර්යාව ලියා පුරුදු වන්න.',
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
            'I got up early in the morning.I went to toilet.I brushed my teeth and washed my face.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Divider(),
          Text(
            'Simple Past (Negative',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'නැත අර්ථය යොදන විට සෑමවිටම \'not\' යෙදේ.  Simple present වලදී  do not හෝ  does not  යෙදුන බව ඔබට මතක ඇති.do/does හි past form එක did වේ. එමනිසා did not -> didn\'t යෙදේ.',
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
            '  නිශාදි ඊයේ විභාගයට මුහුණ දුන්හ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (Nishadi didn\'t face an  examination)',
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
            'yesterday වාක්‍යයේ මුලට හෝ අගට යෙදිය හැකිය.',
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
            'මෙහි වැදගත් කරුණ වන්නේ didn\'t කියූ විට වාක්‍ය past tense වන බැවින් නැවත verb එක  past form එකෙන් නොතබයි.සාමාන්‍ය  verb form යොදයි.',
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
            '  Last month father and I didn\'t grow paddy.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (ගිය මාසේ මමයි තාත්තයි වී වගා කලේ නෑ.)',
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
            'මෙම ක්‍රමය වැඩිදුරටත් පුරුදු වීමට ඔබ ගිය සතියේ නොකරපු දේවල් ලියන්න. ',
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
            'දැන් ඔබ ඉගෙන ගත් Tenses  භාවිතා කර සරල  Paragraph එකක් ලියමු.',
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
            'සිල්වා හොඳ මනුස්සයෙක් .ඔහු හැමදාම පත්තර කියවනවා.නමුත් ඔහු නවකතා කියවන්නෑ .ඔහුගේ යාළුවා පෙරේරා .සිල්වයි පෙරේරායි ඊයේ චිත්‍රපටියක් බලන්න ගියා.නමුත් ඔවුන් දවල් කෑම කෑවේ නෑ.ලබන සතියේ පෙරේරා අනුරාධපුරේ යාවි.ඔහු  වාහනයක් මිලදී නොගනීවි.',
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
            'මෙය ඔබ තනිවම ලියන්න උත්සහ කරන්න .ඉන්පසු පහත පිළිතුර හා සසඳන්න.',
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
            'Silva is a good man. Every day he reads newspapers. But he doesn\'t read novels. His friend is Perera. Silva and Perera went to watch a movie yesterday. But they didn\'t have their lunch. Next week Perera will go to Anuradhapura. He won\'t buy a vehicle.',
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
