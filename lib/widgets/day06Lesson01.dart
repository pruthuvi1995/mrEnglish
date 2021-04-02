import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day06Lesson01 extends StatelessWidget {
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
              'කාලය සමඟ භාවිතා වන ප්‍රධාන prepositions කිහිපයක් මෙහිදී සාකච්චා කෙරේ. මෙහිදී ඔබ විශේෂයෙන්ම අවබෝධ කරගත යුත්තේ එකම prepositions එක place-prepositions, time-prepositions ලෙස යෙදෙන අවස්ථාද ඇත.එමනිසා යම්තාක් දුරට පැටලිලි සහගත විය හැක.මේ නිසා prepositions පිළිබඳව නිවැරිදි අදහසක් ඉංග්‍රීසි ඉගෙන ගන්න අයෙකු ලෙස ඔබ තුල තිබීම අත්‍යවශ්‍ය වේ.ඒ සඳහා මෙම පාඩම් මාලාව විශාල රුකුලක් වනු නොවනුමානය.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Divider(),
            Text(
              'on',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'දවසක් සම්බන්ධයෙන් කතා කිරීමේදී on prepositions යොදයි.',
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
              '  on Sunday',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  on Christmas',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  on Poya day',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  Many shops don\'t open on Poya days.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  My son goes to Damma school on Sundays.',
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
              'සතියේ දිනයක් ලිවීමේදී සමහරු වචන දෙකකින් ලියයි.එය වැරදිය. ඉංග්‍රීසි භාෂාවේ සෑම දිනයක්ම තනි වචනක් වේ.එසේම එකක් වාක්‍යක කොතන යෙදුනද මුල් අකුර capital විය යුතුය.',
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
              'weekend සමඟ යෙදෙන preposition එක පැටලිලි සහගතය.එහි නිවැරිදි අකාරය වන්නේ',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'on weekend - American English',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'at weekend - British English ',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Divider(),
            Text(
              'in',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'මෙය මාසයක්, අවුරුද්දක්, සෘතුවක්, කාල පරාසයක් සම්බන්ධයෙන් යොදයි.',
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
              '   I was born in 1988 (අවුරුද්දක්)',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  The course will be started in June (මාසයක්)',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  European people travel overseas in summer (සෘතුවක්) ',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  He will come to meet you in ten minutes. (කාල පරාසයක්)',
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
              'at',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'වෙලාවක් සම්බන්ධයෙන් යොදයි.',
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
              '  Sri lankan schools start at 7.30 a.m.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  Nirmani wants to meet you at lunch time.',
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
              'දවසක් ප්‍රධාන කොටස් 5ට බෙදයි.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'morning, afternoon, evening -> in',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'night, down (පාන්දර) -> at ',
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
              '  Soldiers entered the building at night.',
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
              'since',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'සිට යන අර්ථය යෙදේ.',
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
              '  She has been working as a teacher since 2004.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (ඇය 2004 සිට ගුරුවරියක් ලෙස සේවය කරනවා.)',
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
              '  I haven\'t eaten anything since morning.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (මන් උදේ සිට මොකුත් කාලා නෑ.)',
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
              'till/ until',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'යම් කාලයක් දක්වා/ තුරු යන්න අර්ථවත් වේ.',
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
              '  I will wait until/ till your father comes..',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (මම ඔබගේ තාත්තා එනතුරු ඉන්නවා.)',
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
              '  They fight until/ till death.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (ඔවුන් මැරෙන තුරු සටන් කරනවා.)',
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
              'For',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'prepositions වලදී මෙහි අරුත තිස්සේ යන්න.',
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
              '  He has been selling vehicles for five years.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (ඔහු අවුරුදු 5ක් තිස්සේ වාහාන විකුණයි.)',
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
              '  I have been following you for two hours.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (මම පැය 2ක් තිස්සේ ඔබ පසුපස එනවා.)',
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
              'Ago',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'වර්තමානයේ කාලයේ සිට අතීතයේ යම් කාල පරාසයක් හැදින්වීමට යොදයි.',
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
              '  The dinosours died out 65 million years ago.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (ඩයිනොසරයින් අවුරුදු මිලියන 65කට කලින් මිය ගියා.)',
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
              '  We got married twi years ago.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (අපි අවුරුදු දෙකකට කලින් විවාහ වුනා.)',
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
              'From - to',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'සිට - දක්වා යන්න අදහස් කෙරේ.',
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
              '  He will be in the office from 5.00 pm to 9.00 pm.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (ඔහු කාර්යාලයේ සිටීවි පස්වරු 5 සිට 9 දක්වා )',
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
              'දවසක් සම්බන්ධයෙන් කතා කිරීමේදී on යෙදෙන බව සාකච්චා කර ඇත.  නමුත් සමහර විට on christmas මෙන්ම at christmas ලෙසද යෙදෙන අවස්ථාද ඇත. මෙහි වෙනස කුමක් ද?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'on preposition යොදන්නේ නියමිත දිනයක් සම්බන්ධවයි. ',
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
              '  on christmas day',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  on new year\'s eve',
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
              'නමුත් අපි කතා කරන්නේ කාල වකවානුවක් ගැනනම් at යෙදේ.',
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
              '  at christmas',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  at new year\'s',
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
