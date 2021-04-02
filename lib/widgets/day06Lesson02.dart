import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day06Lesson02 extends StatelessWidget {
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
              'phrases යනු වාක්‍ය ඛණ්ඩ වේ.මෙහිදී සමහර අවස්ථාවල අදාල  phrases සමඟ යෙදිය යුතු නිශ්චිත preposition ඇත.ඉංග්‍රීසි භාෂාවේ මෙවැනි අවස්ථා බොහොමයක් ඇති අතර ඉන් කිහිපයක් විස්තර කරමි.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Divider(),
            Text(
              '1. By chance - අහම්බෙන්  ',
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
              '  I saw Julie at the station by chance.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (මම අහම්බෙන්  station එකේදී ජුලීව දැක්කා.)',
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
              '2.At once - එකපාරටම ',
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
              '  You must do it at once.Don\'t wait even one minute.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (විනාඩියක්වත් ඉන්න එපා .ඔයා එකපාරටම ඒ දේ කල යුතුයි.)',
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
              '3.On time - හරියටම වෙලාවට ',
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
              '  Why are you never on time?',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (ඇයි කවදාවත් ඔයා වෙලාවට එන්නැත්තේ?)',
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
              '4. in danger - භයානක අවස්ථාවක් තුළ ',
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
              '  When the vehicle started rolling we realized that we were in danger.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (වාහනය පෙරළෙන්න පටන් ගත් විට අපි තේරුම්ගත්තා අපි සිටියේ අනතුරක බව.)',
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
              '5.on purpose - අරමුණින්',
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
              '  Did you take my bag on purpose ?Why would you do that?',
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
              '6. Get in - මෙහි අර්ථය වන්නේ වාහනයකට /taxi එකකට ගොඩ වෙනවා යන්නයි.',
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
              '  Please get in the vehical soon',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (ඉක්මනට වාහනයකට ගොඩ වෙන්න.)',
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
              '7. Get out - මෙහි අර්ථය වන්නේ කාර් එකකින් හෝ taxi එකකින් බහිනවා යන්නයි.',
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
              '  Look ! She is getting out of the taxi.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (බලන්න! ඇය ටැක්සියෙන් බහිමින් ඉන්නවා.)',
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
              '8. Get of - මෙහි අර්ථය වන්නේ බහිනවා යන්නයි. ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'get out සහ get off යන්න අතර සැලකිය යුතු වෙනස්කමක් ඇත. get off යන්නෙන් අදහස් කරන්නේ පොදු ප්‍රවාහන සේවයෙන් බහිනවා යන්නයි.',
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
              '  If you go to the post office you should get off from Golahala junction.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (ඔබට තැපැල් කාර්යාලයට යන්නට අවශ්‍ය නම් ගොලහැල හන්දියෙන් බහින්න. (පොදු ප්‍රවාහන සේවයක යන විට))',
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
              '9. About',
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
              'මෙහි අර්ථ දෙකක් ඇත.',
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
              '(1) \'පමණ\' යන්න ',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              ' උදාහරණයක් ලෙස අපේ පාසලේ ගුරුවරුන් දස දෙනෙක් පමණ ඉන්නවා යැයි සලකමු. මෙහි \'පමණ\' යන්න සඳහා  about යෙදිය යුතුය.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'There are about ten teachers in our school.',
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
              '  I have about five hundred rupees.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (මම ගාව රුපියල් 500ක් පමණ තිබෙනවා.)',
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
              '(2)අනෙක් අර්ථය වන්නේ \'ගැන\'යන්නයි .',
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
              '  Our sister has been reading a book about birds.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (අපේ සහෝදරිය මේ දවස් වල පොතක් කියවනවා කුරුල්ලෝ ගැන.)',
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
              '  I heard rumors about you.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (මට ඔබ ගැන කටකතා වගයක් ඇහුණා.)',
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
              'With',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'මෙහි අර්ථය වන්නේ  \'සමඟ\' යන්නයි.',
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
              '  She has a trouble with remembering new vocabulary.',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              '  (ඇයට ප්‍රශ්නයක් තියෙනවා අලුත් වචන මතක තබා ගැනීම පිළිබඳව (සමඟ))',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Divider(),
            Text(
              'Prepositions and adjectives.',
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
              'ඉංග්‍රීසි භාෂාවේදී සමහර අවස්ථාවල  adjectives (නාම විශේෂණ ) සමඟ prepositions යෙදේ.',
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
              'aware of -> දැනගන්නවා',
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
              'different from -> යම් දෙයකින් වෙනස් බව දැක්වීම .',
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
              'similar to -> යම් දෙයකට සමානය යන්න දැක්වීමට යොදයි.',
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
              'wrong with -> මොකක්ද ප්‍රශ්නය ,ගැටලුව යන්න දැක්වීම අදහස් කෙරේ.',
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
              'surprised at -> යමක් හේතුවෙන් පුදුමයට පත්වනවා යන්න අදහස් කෙරේ.',
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
              'interested in -> යමකට උනන්දුවක් දක්වනවා යන්න අදහස් කෙරේ.',
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
              'good at -> යමකට දක්ෂයි යන්න අදහස් කෙරේ.',
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
              'good -> for -> යම් පුද්ගලයෙක් හෝ පුද්ගලයින් සඳහා හොඳයි ,සුදුසුයි යන්න අදහස් ',
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
              'ඉහත දක්වූ prepositions වලට අදාලව උදාහරණ බලමු.',
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
              'You have to be aware of the health.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(ඔබ සෞඛ්‍ය ගැන දැනුවත් විය යුතුයි.)',
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
              'Is he very different from his brother?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(ඔහු ඔහුගේ සහෝදරයට වඩා ගොඩක් වෙනස්ද ?)',
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
              'This picture is similar to the one in our living room.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(මේ පින්තතූරය අපේ සාලේ තියෙන පින්තතූරයට සමානයි.)',
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
              'What\'s wrong with Samantha?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'මොකක්ද සමන්තගේ අවුල?',
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
              'We were surprised at the price of food in the restaurant.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(අපි රෙස්ටුරන්ට් එකේ කෑම වල මිලගනන් වලට පුදුම වුණා.)',
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
              'I am interested in slim girls.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(මම කෙට්ටු ගෑණුළමයි ගැන උනන්දුවක් දක්වනවා.)',
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
              'My son is good at Science.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(මගේ පුතා විද්‍යාවට දක්ෂයි.)',
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
              'Exercise is good for everyone.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(ව්‍යායාම කිරීම සියලු දෙනාට හොඳයි.)',
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
              '  Prepositions යන්න හරියටම මෙයයි කියා අවබෝධ කරදීම ඉතා අපහසු කාරණයකි.එයට හේතුව වන්නේ  preposition සම්බන්ධව පහසුවෙන් තේරුම් ගත හැකි නීතියක් නොමැති වීමයි.)',
              style: TextStyle(
                fontSize: size,
                color: Colors.purple,
              ),
            ),
        ]),
      ),
    );
  }
}
