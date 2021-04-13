import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day09Lesson02 extends StatelessWidget {
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
            'English language හි දෙවන tense ආකාරයයි.මෙය යමක් කරමින් ඉන්නවා යන්න දැක්වීමට යොදා ගනියි. ',
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
            'subject + be verb + verb + ing + object',
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
            'මෙම tense type හඳුනා ගැනීමේ පහසුම ක්‍රමය be verb එකක් සහ ing සහිත verb එකක් තිබීමයි.',
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
            'මෙහි present, past, future තීරණය කරනුයේ be verb මගින්ය. එසේ නම්  continuous tense වලට ප්‍රථමව   be verbs මොනවාදැයි  අධ්‍යනය වැදගත් වේ.',
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
            'English Language හි ප්‍රධාන ලෙස  be verbs ආකාර 3 කි.',
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
            'Present',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  am - I',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  is - කතෘ  singular එක වචන',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  are -කතෘ plural (බහු වචන)',
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
            'Past',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  was - I,  singular ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  were - plural ',
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
            'Future',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  will be -  singular, plural and I',
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
            'මීට අමතරව been, being ලෙස අමතර  be verbs දෙකක්ද ඇත.',
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
            '  1. Singular nouns -> He, She, It ට අදාළ කතෘ ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  2. Plural  nouns -> You, We, They ට අදාල කතෘ',
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
            'Continuous tense වලට අදාළව be verbs තේරිමකදී ප්‍රධාන පියවර 2 ක් අනුගමනය කරන්න.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  1. කාලය  (present,past,future)',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  2. singular හෝ plural බව',
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
            'දැන් අපි Present, Past, Future වලට අදාළ continuous tenses වෙන වෙනම සාකච්ඡ කරමු.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Divider(),
          Text(
            'Present Continuous Tense',
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
            '  මම කේක් එකක් පිළියෙළ කරමින් සිටිනවා.',
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
            'කාලය Present - am, is හෝ are යෙදේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'I ට අදාල be verb එක  am වේ.',
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
            '  I am making a cake',
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
            'ඕනෑම verb එකක්  e වලින් අවසන් වන විට  ing එකතු කිරීමේදී  e ඉවත් කර  ing එකතු කරයි.',
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
            '  come + ing -> coming',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  make + ing -> making',
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
            'නමුත් verb අවසන් වන්නේ ee නම් e ඉවත් කිරීමක් සිදු නොවේ.',
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
            '  agree + ing -> agreeing',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  see + ing -> seeing',
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
            'ඉහත වාක්‍ය pronoun වලට අදාලව ලිවීමේදී ',
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
            'I am making a cake.',
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
            'You, We, They + are making a cake.',
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
            'He, She, It + is making a cake.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Divider(),
          Text(
            'Past Continuous Tense',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'You/ We/ They + were reading a book',
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
            'I/ She/ He/ It + was reading a book',
            style: TextStyle(
              fontSize: size,
              color: Colors.purple,
            ),
          ),
          Divider(),
          Text(
            'Future Continuous Tense',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'Future Tense ඉතාමත් පහසුය.කතෘ කවුරු වුවත්  \'will be\' be verb පමණක් යෙදේ. ',
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
            'I/ You/ We/ They/ He/ She/ It + will be going to Colombo next Monday.',
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
            'Example: ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            '  මම ලබන සඳුදා කොළඹ යමින් ඉඳීවි.',
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
            'මෙවැනි වාක්‍යක කාලය (next Monday) වාක්‍යයේ මුලට හෝ අගට යෙදිය හැකිය.',
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
            '  I will be going to Colombo next Monday',
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
            '  හෝ',
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
            '  හෝ',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  Next Monday I will be going to Colombo',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Divider(),
          Text(
            'Continuous Negative',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'මෙම tense type negative කිරීමේදී  be verb එකට not එකතු වීම සිදු වේ.එය කෙටියෙන් දක්වන අයුරු පහලින් දක්වා ඇත. ',
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
            'am not - කෙටි යෙදුමක් නැත.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'is not - isn\'t',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'are not- aren\'t',
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
            'was not - wasn\'t',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'were not-weren\'t',
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
            'will not be - won\'t be',
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
            '  She wasn\'t watching TV',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  (ඇය ටීවී බලමින් නොසිටියාය.)',
            style: TextStyle(
              fontSize: size,
              color: Colors.blue,
            ),
          ),
          Text(
            '  මෙම සිංහල ඡේදය English වලට පරිවර්තනය කරන්න.',
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
            'නිශාදි දක්ෂ ළමයෙක් නොවෙයි.නමුත් ඇයට නටන්න පුළුවන්.ඊයේ උදේ මට ඇය මුණගැහෙන විට ඇය ලස්සනට නටමින් සිටියා .ඇගේ පියා හා මව ඇය දෙස බලාගෙන හිටියා.මේ මොහොතේ ඇය නැටුම් තරඟයකට පුහුණු වෙමින් ඉන්නවා.නිශාදිගේ මල්ලි ගීතයක් ගයමින් ඉන්නවා.ලබන සතියේ ඇය තරඟයට සහභාගී වීමට මහනුවර යමින් ඉඳීවි.ඇගේ යහළුවෝ සිංදු කියමින් නොසිටිවී.',
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
            ' clever-දක්ෂ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            ' competition-තරඟය',
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
            'මෙය ඔබ තනිවම ලියන්න උත්සහ කරන්න .ඉන් පසු පහත පිළිතුර හා සසඳන්න.',
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
            'Nishadi is not a clever child. But she can dance well. Yesterday morning when I met her, she was dancing well. Her mother and father were looking at her. At this moment she is practising for a dancing competition. Nishadi\'s brother is singing a song. Next week she will be going to Kandy to participate in the competition. Her friends won\'t be singing songs.',
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
            'මම ලියුමක් ලියමින් නොවෙයි ඉන්නේ.අපේ අම්මා ටි.වී එක බලමින් නොවෙයි ඉන්නේ.මගේ තාත්තා කුඹුරට යමින් ඉන්නවා.ඔහු ගොයම් අස්වැන්න නෙලන්නයි යන්නේ .ගිය සඳුදා මගේ අම්මා කේක් එකක් සාදමින් හිටියා.එවිට මගේ සහෝදරයා අම්මට උදව් කරමින් සිටියා.දැන් සහෝදරයා කේක් හදන්න දන්නවා.ලබන ඉරිදා මගේ සහෝදරයයි මමයි පලතුරු කේක් එකක් සාදමින් ඉදිවී.අපි චොක්ලට් කේක් සාදමින් නොසිටිවී.',
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
            'paddy field-කුඹුර',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'harvest-අස්වැන්න නෙලනවා.',
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
            'මෙය ඔබ තනිවම ලියන්න උත්සහ කරන්න.ඉන්පසු පහත පිළිතුර හා සසඳන්න.',
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
            'I am not writing a letter. Our mother is not watching television. My father is going to the paddy field. He is going to harvest paddy. Last Monday my mother was preparing a cake. Then my brother was helping my mother. Now my brother knows how to make cakes. Next Sunday my brother and I will be preparing a fruit cake. We will not be making chocolate cakes.',
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
        ]),
      ),
    );
  }
}
