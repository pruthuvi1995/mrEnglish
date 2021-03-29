import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day05Lesson01 extends StatelessWidget {
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
              'Prepositions about places',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'English grammer වල ඉතාමත් වැදගත් කොටසක් වන්නේ  prepositionsය. ඉතා සරලව ප්‍රකාශ කලොත්  prepositions මගින් nouns, pronouns, phrases අනෙකුත් වචන හා සම්බන්ධ කිරීමේ ද ඒ ආධාරයේන් වාක්‍ය සැදීමද සිදු කරයි.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'ඉංග්‍රීසි භාෂාවේ  prepositions 150 පමණ ඇති අතර in, at, on, to, among ආදිය බහුලව භාවිතා වන  prepositions කීපයකි.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'ඔබගේ පහසුව උදෙසා  prepositions,',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '   prepositions about places',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '   prepositions about time',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '   other prepositions',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'ලෙස ආකාර 3කින් ඉගැන්වීමට බලාපොරොත්තු වේ.එසේම මෙම පාඩම් මාලාවේදී මුලික  prepositions පමණක් සාකච්චා කරන අතර තවදුරට අවශ්‍යනම් internet හරහා දැනුම වැඩි දියුණු කරගත හැකිය.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'English grammer lesson වලදී බොහෝවිට වගුවක් භාවිතයෙන්  prepositions පැහැදිලි කලද ඔබට ඉතා හොදින් මතක තබා ගැනීමේ පහසුව සඳහා අප පාඩම් මාලාවේදී රූප ආධාරයෙන් විස්තර කෙරේ.',
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
              'in - තුළ ',
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
              '  I slept in the car.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (මම කාර් එකේ (තුළ) නිදා ගත්තා.)',
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
              '  He was born in Badulla.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (ඔහු ඉපදුනේ බදුල්ලේ.(බදුල්ල කියන ප්‍රදේශය තුළ))',
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
              'inside - තුළ  ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'මෙහි අර්ථය in යන්නට බොහෝ සෙයින් සමාන වේ. outside යන්නේ විරුද්ධ  අර්ථයයි. බොහෝවිට ගොඩනැගිල්ලක් තුල වැනි අර්ථයක් ඇත.',
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
              '  You should stay inside the office until he comes.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (ඔබ කාර්යාලය තුල ඔහු එනතුරු සිටිය යුතුය.)',
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
              'by - අසල ',
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
              '  He lives in the house by the river.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (ඔහු ජිවත් වන්නේ ගඟ අසල තියෙන නිවසේ.)',
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
              'beside සහා behind',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'මේවා එක හා  සමාන උච්චාරණයක් තිබුනද තේරුම බොහෝදුරට වෙනස්ය.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'beside - පසෙකින් ',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'behind - පිටුපසින් ',
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
              '  Railway station is behind the super market.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (දුම්රිය නැවතුම් පොළ තිබෙන්නේ සුපිරි වෙළදසැලට පිටුපසිනි.)',
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
              '  There is a Banyan tree beside the supermarket.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (සුපිරි වෙළදසැලට පසෙකින් නුග ගසක් ඇත.)',
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
              'on, over, above',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'on - මත/ උඩ (පෘෂ්ටයේ ගෑවේ.)',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'over - පෘෂ්ටයට ටිකක් ඉහළින් ',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'above - පෘෂ්ටයට වඩා ගොඩක් ඉහළින් ',
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
              '  The ball is on the roof.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (බෝලය වහලය මත තියෙනවා.)',
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
              '  ',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  The bird is flying over the roof.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (කුරුල්ලා වහලයට ඉහලින් පියාබනවා.)',
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
              '  The aeroplane is flying above the roof.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (ගුවන් යානය වහලයට ඉහලින් ඉතා ඉහලින් ගමන් කරයි.)',
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
              'over යන්නේ තව විවිධ අර්ථ තිබේ.',
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
              'Example: ',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  He is over there.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (ඔහු අර පැත්තේ ඉන්නවා.)',
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
              '  I walked over the bridge.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (මම පාලම මතින් ගමන් කළා.)',
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
              'towards (යමක් හෝ යම් කෙනෙක් දෙසට) ',
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
              '  We ran towards the school.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  අපි පාසල දෙසට දිව්වා.',
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
              'under (යට)  ',
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
              '  Your pencil is under the table',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  ඔබගේ පැන්සල මේසය යට තියනවා.',
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
              'at/ near (අසල)  ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'මේ prepositions දෙකේ අර්ථය අසල වුවද සැලකියයුතු වෙනසක් ඇත.',
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
              'මෙහි Kamal හා Rasika දෙදෙනාම ලිඳ අසල සිටි. නමුත් Kamalට වඩා Rasika ලිඳ අසලටම වී සිටි.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  Kamal is near the well. (අසල) ',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  Rasika is at the well. (වඩාත් අසල) ',
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
              'Through/ across (හරහා) ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'මේ preposition දෙකේ අර්ථය හරහා වුවද අදහසේ යම් වෙනසක් ඇත.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'මෙහි වෙනස පැහැදිලිව තේරුම් ගන්න. බාධාවක් හරහා ගමන් කරයිනම් through බාධාවක් රහිතව ගමන් කරයි නම් across වේ.',
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
              '  ඔහු කුබුර හරහා දිව්වා. ',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              'මෙහිදී කුබුරේ ගොයම් පැල ඇති බැවින් ගමන් කිරීම අපහසුය. බාධාවක් ඇත.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  He ran through the paddy field.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              ' ',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  ඇය පාර හරහා වේගයෙන් ගමන් කළා. ',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              ' මෙහිදී පාරේ බාධාවක් නොමැති බැවින් across යෙදේ.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  She rushed across the road.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Divider(),
            Text(
              'round/ around (වටේම)',
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
              'මේ prepositions වලද අර්ථයේ පැහැදිලි වෙනසක් ඇත. round යමක් වටේට නියමිත පථයක් හරහා යන්නයි.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'around යනු යමක් වටේට නියමිත පථයක් නොමැතිව පැහැදිලි නැති ගමන් මාර්ගයක යන්නයි.',
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
              '  The earth goes round the sun.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (පෘථිවිය හිරු වටේට ගමන් කරයි.)',
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
              '  We are sitting around the table.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (අපි මේසය වටේට හිටගෙන ඉන්නවා.)',
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
              'between/ among (අතරින්)',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'between - දෙදෙනෙකු හෝ දෙකක් අතර යන අර්ථය ඇත.',
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
              '  You have to select the correct answer between these.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (මේ පිළිතුරු දෙක අතරින් නිවැරිදි පිළිතුර තේරිය යුතුය.)',
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
              '  Nishan is sitting, between Kewin and Viraj.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (නිශාන්, කෙවින් හා විරාජ් අතර වාඩිවෙලා ඉන්නවා.)',
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
              'Among - ගොඩක් අතරින් යන්න අර්ථවත් වේ.',
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
              '  Select a man among those ten people.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  මනුස්සයෙක් තෝරා ගන්න අර මිනිස්සු දසදෙනා අතුරෙන්.',
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
              'infront of/ behind/ next to/ before',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'ඉහත prepositions බොහෝවිට සිතියමක යම් ස්ථානයක පිහිටීම දැක්වීමට යොදා ගනී.',
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
              'in front of - ඉදිරියෙන් ',
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
              '  The hospital is in front of the bank.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (රෝහල, බැංකුවට ඉදිරියෙන් පිහිටා ඇත.)',
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
              'behind - පිටුපස',
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
              '  There is a pond behind the bank.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (බැංකුවට පිටුපසින් පොකුණක් තියනවා.)',
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
              'next to - ඊළඟට ',
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
              '  The hospital is next to the post office.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (තැපැල් කාර්යාලයට පසුව (ඊළඟට) රෝහල පිහිටා ඇත.)',
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
              'Before (කලින්/ පෙර )',
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
              '  There is a bank before the temple.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (පන්සලට කලින් බැංකුවක් පිහිටා ඇත.)',
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
              'up/ down (ඉහලට/ පහලට) ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(), //para
            Text(
              'Example: ',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  The thief climbed up and down the tree.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  හොරා ගසට නැගලා බැස්සා.',
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
