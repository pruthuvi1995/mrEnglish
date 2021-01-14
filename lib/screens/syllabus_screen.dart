import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

import '../constants.dart';
import '../size_config.dart';

class SyllabusScreen extends StatelessWidget {
  static const String routeName = '/syllabus';
  final appBar = AppBar(
    title: Text(
      'Syllabus of Basic english course',
      style: TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
        fontSize: getProportionateScreenHeight(17),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: AppDrawer(),
      body: Container(
        height: getProportionateScreenHeight(675),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            buildContainer('', 'Articles - part 01', 1),
            buildContainer('description', 'Nouns, verbs', 2),
            buildContainer('description', 'Singular & plural nouns', 3),
            buildContainer('description', 'This/These/That/Those', 4),
            buildContainer('description', 'Adjectives/Adverbs', 5),
            buildContainer('description', 'There is/are/questions', 6),
            buildContainer('description', 'Prepositions - places', 7),
            buildContainer('description', 'Prepositions - time', 8),
            buildContainer('description', 'Prepositions - other', 9),
            buildContainer('description', 'Tenses introduction/pronouns', 10),
            buildContainer('description', 'Simple present tense/Negative', 11),
            buildContainer('description', 'Simple past tense/Negative ', 12),
            buildContainer('description', 'Simple future tense/Negative ', 13),
            buildContainer('description', 'Continuous tense/Be verbs', 14),
            buildContainer(
                'description', 'Present perfect tense/Negative ', 15),
            buildContainer(
                'description', 'Past/Future perfect tense/Negative', 16),
            buildContainer(
                'description', 'Prefect continious tense/Negative ', 17),
            buildContainer('description', 'The article', 18),
            buildContainer('description', 'Yes/No questions', 19),
            buildContainer('description', 'Let\'s/shall we', 20),
            buildContainer('description', 'Can/could/Negative', 21),
            buildContainer('description', 'WH questions ', 22),
            buildContainer('description', 'Should/must/Negative', 23),
            buildContainer(
                'description', 'Have to/has to/may/might/aught to', 24),
            buildContainer('description', 'Possesive adjectives/pronouns', 25),
            buildContainer('description', 'Reflective pronouns', 26),
            buildContainer('description', 'Question tags/short answers', 27),
            buildContainer('description', 'Conjunctions (1)', 28),
            buildContainer('description', 'Conjunctions (2)', 29),
            buildContainer('description', 'Conjunctions (3)', 30),
            buildContainer('description', 'Although/while/when', 31),
            buildContainer('description', 'Relative clauses', 32),
            buildContainer('description', 'Whome/whose/where/why', 33),
            buildContainer('description', 'Zero/first condition', 34),
            buildContainer('description', 'Third condition ', 35),
            buildContainer('description', 'A little/a few', 36),
            buildContainer('description', 'Somebody/nobody', 37),
            buildContainer('description', 'Passive voice - simple tense', 38),
            buildContainer(
                'description', 'Passive voice - continuous tense', 39),
            buildContainer('description', 'Passive voice - perfect tense', 40),
            buildContainer('description', 'Reported speech - present', 41),
            buildContainer(
                'description', 'Reported speech - normal expressions ', 42),
            buildContainer(
                'description', 'Reported speech - request/inquary ', 43),
            buildContainer(
                'description', 'Reported speech - yes/no questions ', 44),
            buildContainer('description', 'Reported speech - WH questions', 45),
            buildContainer('description', 'Unless', 46),
            buildContainer('description', 'Such as/like', 47),
            buildContainer('description', 'Also/too', 48),
            buildContainer('description', 'Too/enough', 49),
            buildContainer('description', 'Too/enough', 50),
          ]),
        ),
      ),
    );
  }

  Container buildContainer(String description, String title, int qNo) {
    return Container(
      margin: EdgeInsets.only(
          right: getProportionateScreenHeight(5),
          left: getProportionateScreenHeight(5),
          bottom: getProportionateScreenHeight(5)),
      height: getProportionateScreenHeight(90),
      child: Card(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: getProportionateScreenHeight(5),
                  right: getProportionateScreenHeight(10)),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(50)),
                child: Container(
                  // margin:
                  //     EdgeInsets.only(left: getProportionateScreenHeight(5)),
                  height: getProportionateScreenWidth(50),
                  width: getProportionateScreenWidth(50),
                  color: kPrimaryColor,
                  child: Center(
                    child: Text(
                      qNo.toString(),
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(25),
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: getProportionateScreenWidth(275),
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(17),
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                      softWrap: true,
                    ),
                  ]),
            ),
          ],
        ),
        elevation: 5,
      ),
    );
  }
}
