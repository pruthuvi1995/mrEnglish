import '../size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Day14Lesson01 extends StatelessWidget {
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
              'ඉංග්‍රීසි භාෂාවේ ප්‍රශ්න ඇසීමේ ආකාර දෙකකි.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  1. yes / no questions',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '  2. WH questions',
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
              'ඊළඟ පාඩමේදී  WH questions පිළිබඳව අවධානය යොමු කෙරේ.',
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
              'yes / no questions  හඳුනා ගැනීමේදී පහසුම ක්‍රමය ප්‍රශ්නයකට පිළිතුර yes හෝ no වීමයි. වෙනත් පිළිතුරක් ලැබෙන්නේ නම් එය WH questions වේ.',
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
              '  ඔබ දුම් බොනවාද? පිළිතුර \'ඔව්\' හෝ \'නෑ\' යන්නයි. එමනිසා එය yes / no questions වේ. ',
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
              '  ඔබ හෙට මාව මුණගැහෙන්න එන්නේ කොහාටද? මෙයට පිළිතුර \'ඔව්\' හෝ \'නෑ\' නොවේ. වෙනත් පිළිතුරකි. මේවා WH questions වේ. ',
              style: TextStyle(
                fontSize: size,
                color: Colors.blue,
              ),
            ),
            Text(
              'yes / no questions ගොඩ නැගෙන්නේ tenses වලිනි. එමනිසා එක් එක් tenses සලකා බැලීම වැදගත් වේ.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Divider(),
            Text(
              '(1) පළමුව tenses නොවන අවස්තාවක් සලකමු.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'She is a teacher.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(ඇය ගුරුවරියක්.)',
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
              'මෙහිදී be verb වාක්‍යයේ මුලට යොදා ගැනේ.',
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
              'Is she a techer?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(ඇය ගුරුවරියක්ද?)',
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
              'Our friends were very bad.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'Were our friends very bad?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Divider(),
            Text(
              '(2) ඔබේ පහසුව උදෙසා continuous tenses වලින් ආරම්භ කරමු. ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'Present continuous tense',
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
              'She is cooking dhal.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(ඇය පරිප්පු උයමින් ඉන්නවා.)',
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
              'මෙහිදී be verb එක මුලට යොදයි.',
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
              'Is she cooking dhal?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(ඇය පරිප්පු උයමින්ද ඉන්නේ?)',
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
              'Past continuous tense',
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
              'People were screaming.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'Were people screaming?',
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
              'Negative',
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
              'They aren\'t opening the window.',
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
              'මෙහිදී be verb හි negative යෙදෙන බැවින් be verb හා not යන්න දෙකම වාක්‍යයේ යෙදේ.',
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
              'Aren\'t they opening the window?',
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
              'You were checking questions.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'Were you checking questions?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Divider(),
            Text(
              '(3) Simple tense',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'මෙම කොටස පිළිබඳව හොඳ අවධානයක් යොමු කරන්න. ටිකක් සංකීර්ණ කොටසකි.',
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
              'Simple present tense',
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
              '  කතෘ බහු වචන වනවිට ',
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
              'They play cricket.',
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
              'මෙහිදී ඔවුන් ක්‍රිකට් සෙල්ලම් කරනවා යන්න ප්‍රශ්නයක් ලෙස ගොඩ නැගීමේදී ඔවුන් ක්‍රිකට් ක්‍රීඩා කරනවාද ලෙස යෙදිය යුතුය.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'මෙහි do යන්න ක්‍රියා පදය තුල සැඟවී ඇත. ප්‍රශ්නයකට හැරවීමේදී do මුලට යෙදේ.',
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
              'Do they play cricket?',
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
              'Teachers don\'t punish students.',
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
              'මෙය yes / no questions ලෙස සැකසීමේදී \'don\'t\'වාක්‍යයේ මුලට යෙදේ.',
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
              'Don\'t teachers punish students?',
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
              'කතෘ ඒක වචන වන විට ',
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
              'she arrenges flowers.',
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
              'මෙහිදී ද කලින් පරිදි do වෙනුවට does සැඟව පවතී. මෙහිදී does කියූ විට s ශබ්දයක් කියවෙන නිසා verb හි s ශබ්දයක් යොදන්නේ නැත. ප්‍රශ්නයකට හැරවීමේදී does මුලට යෙදේ.',
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
              'Does she arrange flowers?',
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
              'Negative',
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
              'She doesn\'t arrange flowers.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'Doesn\'t she arrange flowers?',
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
              'Simple past tense',
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
              'They spent their holiday.',
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
              'Simple present tense \'do\' , \'does\' වල සැඟව තිබුන බව ඔබට මතක ඇති. ඒ අයුරින්ම මෙහි did යන්න සැඟවී පවතී.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'Question සැදීමේදී did මුලට යෙදේ. එහිදී did වලින් simple past tense කියැවෙන බැවින් ක්‍රියා පදය (verb) අතීත නොවී සාමාන්‍ය ස්වරුපයෙන් පවතී.',
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
              'Did they spend their holiday?',
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
              'නැත අර්ථය යෙදීමේදී ',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'Didn\'t they spend their holiday?',
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
              'simple future tense',
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
              'Buddhima will help us.',
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
              'මෙහිදී future question සැදීමේදී will මුලට යෙදේ.',
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
              'Will Buddhima help us?',
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
              'නැත අර්ථය යෙදීමේදී',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'Won\'t Buddhima help us?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'බුද්ධිමා අපිට උදවු නොකරාවිද?()',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Divider(),
            Text(
              '(4) Perfect tense',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'මෙහිදී perfect tense නිසා  සාමාන්‍යයෙන් වාක්‍යක් හඳුනා ගන්නේ කෙසේද? has, have, had, will have සමඟ verb හි past participle යෙදේ. Perfect tense භාවිතා කර yes / no questions හදන අයුරු බලමු.',
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
              'Present perfect tense',
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
              'Drivers have done a protest.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(රියැදුරෝ උද්ඝෝෂණය කර තිබෙනවා.)',
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
              'ප්‍රශ්නයකට හැරවීමේදී have මුලට යෙදේ.',
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
              'Have drivers done a protest?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(රියැදුරෝ උද්ඝෝෂණය කර තිබෙනවාද?)',
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
              'She has killed her husbond.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(ඇය ඇයගේ සැමියා මරා දමා තිබෙනවා.)',
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
              'ප්‍රශ්නයකට හැරවීමේදී has මුලට යෙදේ.',
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
              'Has she killed her husbond?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              '(ඇය ඇයගේ සැමියා මරා දමා තිබෙනවා ද?)',
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
              'Past perfect tense',
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
              'They had done it before.',
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
              'මෙය yes / no questions කිරීමේදී had මුලට යෙදේ.',
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
              'Had they done it before?',
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
              'Negative',
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
              'They hadn\'t done it before.',
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
              'මෙය yes / no questions කිරීමේදී hadn\'t මුලට යෙදේ.',
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
              'Hadn\'t they done it before?',
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
              'Future perfect tense',
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
              'Nishani will have built a house.',
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
              'මෙය yes / no questions කිරීමේදී will මුලට යෙදේ.',
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
              'Will Nishani have built a house?',
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
              'Negative',
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
              'Nishani will not have built a house.',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Text(
              'Nishani won\'t have built a house.',
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
              'මෙය yes / no questions කිරීමේදී won\'t මුලට යෙදේ.',
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
              'Won\'t Nishani have built a house?',
              style: TextStyle(
                fontSize: size,
                color: Colors.black,
              ),
            ),
            Divider(),
            Text(
              '(5) Perfect continuous tense',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            Divider(),
            Text(
              'Nansi has been working there for two years.',
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
              'නැන්සි එහි අවුරුදු 2ක් තිස්සේ වැඩ කරනවා යන්න අර්ථවත් වේ. මෙය yes / no questions කිරීමේදී has මුලට යෙදේ.',
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
              'Has Nansi been working there for two years?',
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
