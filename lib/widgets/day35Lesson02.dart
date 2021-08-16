import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day35Lesson02 extends StatelessWidget {
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
            'Notice writing',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleSize,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          Divider(),
          Text(
            'English writing වල ඉතාමත් වැදගත් අවස්ථාවකි. ',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'බොහෝ විභාගවලදී මෙන්ම ප්‍රයෝගික ජීවිතයේදී notice අත්‍යවශ්‍ය ලියවිල්ලකි.',
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
            'දැන් අපි notice එකක නිවැරිදි ආකෘතිය (template) සලකා බලමු.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Image.asset(
            'assets/images/day35Lesson02N1.JPG',
            fit: BoxFit.fitHeight,
            height: getProportionateScreenHeight(200),
            width: double.infinity,
          ),
          Text(
            '',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Topic',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
              fontWeight: FontWeight.bold,
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
            'සමහර notice වල topic එකක් සඳහන් කරන්නේ නැත.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'නමුත් නිවැරිදි ආකාරයෙන් දැක්වීමේදී topic එකක් යොදා එය underline කිරීම වැදගත් වේ',
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
            'Body of the notice',
            style: TextStyle(
                fontSize: size,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'මෙහිදී පළමු වාක්‍ය කිහිපය ලිවීමේ පොදු ක්‍රම වේදයක් ඇත.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'එහිදී notice එක කුමක් සම්බන්ධද අදාළ අවස්තාව සංවිධානය කරන්නේ කව්ද යන්න සඳහන් කල යුතුය.',
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
            ' The English Literacy Association of Anuradhapura Central College has organized an English day competition.',
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
            'අනෙක් වැදගත්ම කාරණය වන්නේ body of the notice වලදී ආකාර 2කට එය සඳහන් කරයි.',
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
            ' 1. Paragraph එකක් සේ එක දිගට ලිවීම.',
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
            ' 2. Time, Date, Place වැනි විශේෂ කාරණා highlight කිරීම.',
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
            'මෙහිදී වඩා සාර්ථක සේ සැලකෙන්නේ දෙවන අවස්ථාවයි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'ඔබ notice එකක් ලියන විට පාට වර්ග 3ක් පමණ භාවිතා කිරීම ඉතා ආකර්ශනීය වේ.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Model question අධ්‍යනය කිරීමෙන් මෙය ඔබට මනාසේ වැටහේවි.',
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
            'Date',
            style: TextStyle(
                fontSize: size,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'මෙහිදී සඳහන් කල යුත්තේ notice එක අදාළ notice board එකේ දමන දවසයි.',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'එය notice හි යට වම කෙලවරේ දැක්විය යුතුය.',
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
            'Signature',
            style: TextStyle(
                fontSize: size,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '',
            style: TextStyle(
              fontSize: size,
              color: Colors.black,
            ),
          ),
          Text(
            'Notice හි අවසානයේ දකුණ කෙලවරේ notice එක පිළියෙළ කරන පුද්ගලයාගේ අත්සන සහ designation (තනතුර) සඳහන් කල යුතුය.',
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
            'බොහෝවිට notice පිළියෙළ කරන්නේ secretary ය.',
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
