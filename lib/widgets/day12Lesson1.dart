import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day12Lesson01 extends StatelessWidget {
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
            'Perfect Continuous Tense',
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
            'මෙය  tense වල අවසාන tense type එක වේ. Perfect හා Continuous tenses වල එකතුවකි. Perfect බැවින්   have, has, had, will have යෙදේ. Continuous බැවින්  ing යෙදේ.',
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
            'Present Perfect Continuous Tense යම් ක්‍රියාවක් කාලයක් තිස්සේ කරමින් සිටින බව අදහස් වේ.මෙහි ප්‍රධාන tense කොටස වන්නේ perfect බැවින් කාලය තීරණය වන්නේ ද  perfect  කොටසෙනි.',
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
            'subject + have /  has + been + verb + ing + object',
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
            'අවුරුදු 10ක් තිස්සේ මුද්දර එකතු කිරීම සලකමු.මෙහි අවුරුදු 10ක් තිස්සේ යන්න for ten years ලෙස දැක්විය හැකිය.',
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
            'I have been collecting stamps.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'You have been collecting stamps.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'We have been collecting stamps.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'They have been collecting stamps.',
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
            'He has been collecting stamps.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'She has been collecting stamps.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'It has been collecting stamps.',
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
            '  She has been waiting for him for an hour.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (ඇය පැය 5ක් තිස්සේ ඔහු එනතුරු බලාගෙන ඉන්නවා.)',
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
            '  They have been expecting an answer from the government for a month.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (ඔවුන් මාසයක් තිස්සේ රජයේ පිළිතුරක් බලාපොරොත්තුවෙන් ඉන්නවා.)',
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
            'මෙහිදී negative අවස්ථාව ගැන කතා කරන නිසා \'not\' යෙදේ. has not been / have not been ලෙස සඳහන් කල යුතුය. ',
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
            '  have not been -> haven\'t been',
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
            '  has not been -> hasn\'t been',
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
            '  He hasn\'t been waiting for you for two years.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (ඔහු අවුරුදු දෙකක් තිස්සේ ඔබ එනතුරු බලාගෙන නොවෙයි ඉන්නේ.)',
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
            'මෙම tense එක තුල  Perfect tense හා  continuous tense ගැබ් වී ඇති අතර එයින් Perfect tense වඩා බලසම්පන්න වේ.එම නිසා මෙම  tense type හි කාලය තීරණය කරන්නේ  perfect කොටසිනි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'එනම්,',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  past --> had',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  future --> will have',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Divider(),
          Text(
            'Past perfect continuous tense',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'Example: ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  She had been drawing the picture for three days.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (ඇය දින 3ක් තිස්සේ චිත්‍රය ඇඳලා තිබුනා.)',
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
            'Example: ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  මයික් ට උවමනා වුනා වාඩිවෙන්න මක් නිසාද ඔහු දවස තිස්සෙම හිටගෙන ඉඳිමින් තිබුනා වැඩ කරන විට.',
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
            'මෙහිදී ප්‍රතිපලයක් හා හේතුවක් සඳහන් කර ඇත.මෙවැනි අවස්ථාවකදී කාලයක් තිස්සේ යමක් කර තිබුනා දැක්වීමට past perfect continuous ද ඉතිරි වාක්‍ය past tense වලින්ද යෙදේ.',
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
            '  Mark wanted to sit down because he had been standing all day at work.',
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
            '  නිමල්සිරි මහතා අවුරුද්දක් තිස්සේ විශ්ව විද්‍යාලයේ උගන්වමින් ඉඳලා තිබුනා ඔහු ඉන්දියාවට යන්න කලින්.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (Mr.Nimalsiri had been teaching at the university before he left for India.)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),

          Divider(),
          Text(
            'Past Perfect Continuous Tense - Negative form',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'මෙහිදී,',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  had not been --> hadn\'t been',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'ලෙස යෙදේ.',
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
            '  නිශානි අවසන් විභාගය අසමත් වුණා මොකද ඇය පන්තිවලට සහභාගී වෙමින් නොවෙයි හිටියේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (Nishani failed the final exam because she hadn\'t been attending classes.)',
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
            'Future Perfect Continuous tense',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),

          Text(
            'Example: ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  2022 සිට මම මාස 6ක් තිස්සේ කොළොඹ ජිවත් වෙමින් ඉඳීවි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (Since 2020 I will have been living in Colombo for six months.)',
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
            'Example: ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  ලබන අවුරුද්දේ ඇය අවුරුද්දක් තිස්සේ මෙහෙ වැඩ කරමින් ඉඳීවි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Next year she will be working here for one year.',
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
            '',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Divider(),
          Text(
            'Future Perfect Continuous tense - Negative Form',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'Negative form යෙදීමේදී will not have been ලෙස යොදයි.කතෘ කවුරු වුවත් වෙනසක් නොවේ. ',
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
            'will not have been -> won\'t have been',
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
            'Exercise:',
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
            'ජෝන් වැඩ කරන්නේ මාළු වෙළඳපොලේ.ඔහු එහි අවුරුදු 3ක් තිස්සේ මාළු විකුණනවා.ඊට කලින් ඔහු අවුරුද්දක් තිස්සේ එළවළු විකුණලා තිබුණා.දැන් ඔහු මාළු වෙළඳාම නවත්වන්නයි යන්නේ.ඊට පස්සේ ඔහු පලතුරු විකිණීම අරඹාවී.ජෝන් මාස  8ක් තිස්සේ පලතුරු විකුණමින් ඉඳීවි.නමුත් ඔහු කාලයක් තිස්සේ එළවළු හෝ මාළු විකුණමින් නොසිටිවී.',
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
            'Fish Market - මාළු වෙළඳපොල',
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
            'මෙය ඔබ තනිවම ලියන්න උත්සහ කරන්න. ඉන්පසු පහත පිළිතුර හා සසදන්න.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),

          Text(
            'John works in a fish market. There, he has been selling fish for three years. Before that, he had been selling vegetables for one year. Now he is going to stop selling fish. Then he will start selling fruit. John will have been selling vegetables for eight months. But he will not have been selling vegetables.',
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
