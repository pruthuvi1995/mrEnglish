import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day22Lesson01 extends StatelessWidget {
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
              'මේ සඳහා උදාහරණ වශයෙන් therefore, hence, however, in fact, in addition, on the other hand ආදිය දැක්විය හැකිය. ',
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
              'මෙහිදී යම් අවස්තාවක වාක්‍යක් සඳහා අමතර කාරණයක් එකතු කිරීමේදී conjuctive adverbs යොදා ගනී.',
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
              '  additionally, also, besides, futhermore, in addition, moreover',
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
              'තවත් සමහරවිට cause (හේතුව) effect (ප්‍රතිඵලය) දැක්වීමටද යොදයි.',
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
              '  accordingly, consequently, hence, therefore, thus',
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
              'ඔබගේ පහසුව උදෙසා conjuctive adberbs සමහරක් හා ඒවායේ යෙදවීම් පහතින් දක්වා ඇත.',
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
              '  additionally - එකතුවක් ලෙස ',
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
              '1. 100 hours of theory lessons will be given; additionally, 50 hours of practical experience will be given.',
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
              '(පැය 100ක න්‍යයාත්මක පාඩම් මලාවටද අමතරව පැය 20ක ප්‍රායෝගික අත්දැකීම් ලබා දේ.)',
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
              '  Consequently - As a result',
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
              '1. In that company workers are condemned and ; consequeently, youngers don\'t go to work there.',
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
              '(අර ආයතනයේ සේවකයෙක්ව තලා පෙලා දානවා. එහි ප්‍රතිපලයක් ලෙස තරුණ පිරිස එහි වැඩට යන නෑ.)',
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
              '  Beside - ඒ හැරුණු විට ',
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
              '1. Those books seem very dull; beside, this one.',
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
              '(මේ පොත හැරුණු විට අනෙක් පොත් වැඩක් නෑ.)',
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
              '  Hence/ Therefore - එම නිසා ',
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
              '1. Gamindi is excellent; hence/ therefore, we selected her.',
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
              '(ගාමින්දී ගොඩක් දක්ෂයි. ඒ නිසා අපි ඇයව තෝරා ගත්තා.)',
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
              '  Accordingly - ඒ අනුව ',
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
              '1. We have to undestand her hopes and work accordingly.',
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
              '(අපි ඇයගේ බලාපොරොත්තු තේරුම් ගෙන ඒ අනුව වැඩකළ යුතුය.)',
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
              '  Thus - මෙසේ ',
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
              '1. Brock Lesnar knock out undertaker; thus, becoming the champion.',
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
              '(බ්‍රොක්, අන්ඩටෙකර් පරදා මේ ආකාරයට චැම්පියන් වුනා.)',
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
              'මෙහිද බොහෝ විට ඉහත දක්වා ඇති පරිදි main clause අවසානයේදී හා conjunctive adverb වලට පසුව පිළිවෙලින් semi cilon and comma යෙදේ.',
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
        ]),
      ),
    );
  }
}
