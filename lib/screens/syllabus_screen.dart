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
            buildContainer('Rs.5.00 + tax', 'Articles - part 01', 1),
            buildContainer('Rs.5.00 + tax', 'Nouns, verbs', 2),
            buildContainer('', 'Singular & plural nouns', 3),
            buildContainer('Rs.5.00 + tax', 'This/These/That/Those', 4),
            buildContainer('Rs.5.00 + tax', 'Adjectives/Adverbs', 5),
            buildContainer('', 'There is/are/questions', 6),
            buildContainer('', 'Prepositions - places', 7),
            buildContainer('Rs.5.00 + tax', 'Prepositions - time', 8),
            buildContainer('Rs.5.00 + tax', 'Prepositions - other', 9),
            buildContainer('', 'Tenses introduction/pronouns', 10),
            buildContainer(
                'Rs.25.00 + tax', 'Simple present tense/Negative', 11),
            buildContainer('', 'Simple past tense/Negative ', 12),
            buildContainer(
                'Rs.5.00 + tax', 'Simple future tense/Negative ', 13),
            buildContainer('', 'Continuous tense/Be verbs', 14),
            buildContainer(
                'Rs.5.00 + tax', 'Present perfect tense/Negative ', 15),
            buildContainer(
                'Rs.5.00 + tax', 'Past/Future perfect tense/Negative', 16),
            buildContainer('', 'Prefect continious tense/Negative ', 17),
            buildContainer('', 'The article', 18),
            buildContainer('', 'Yes/No questions', 19),
            buildContainer('', 'Let\'s/shall we', 20),
            buildContainer('Rs.5.00 + tax', 'Can/could/Negative', 21),
            buildContainer('Rs.25.00 + tax', 'WH questions ', 22),
            buildContainer('Rs.5.00 + tax', 'Should/must/Negative', 23),
            buildContainer(
                'Rs.15.00 + tax', 'Have to/has to/may/might/aught to', 24),
            buildContainer(
                'Rs.35.00 + tax', 'Possesive adjectives/pronouns', 25),
            buildContainer('', 'Reflective pronouns', 26),
            buildContainer('Rs.15.00 + tax', 'Question tags/short answers', 27),
            buildContainer('Rs.25.00 + tax', 'Conjunctions (1)', 28),
            buildContainer('Rs.5.00 + tax', 'Conjunctions (2)', 29),
            buildContainer('', 'Conjunctions (3)', 30),
            buildContainer('', 'Although/while/when', 31),
            buildContainer('', 'Relative clauses', 32),
            buildContainer('Rs.15.00 + tax', 'Whome/whose/where/why', 33),
            buildContainer('Rs.15.00 + tax', 'Zero/first condition', 34),
            buildContainer('Rs.10.00 + tax', 'Third condition ', 35),
            buildContainer('Rs.10.00 + tax', 'A little/a few', 36),
            buildContainer('Rs.20.00 + tax', 'Somebody/nobody', 37),
            buildContainer(
                'Rs.15.00 + tax', 'Passive voice - simple tense', 38),
            buildContainer(
                'Rs.25.00 + tax', 'Passive voice - continuous tense', 39),
            buildContainer(
                'Rs.5.00 + tax', 'Passive voice - perfect tense', 40),
            buildContainer('', 'Reported speech - present', 41),
            buildContainer(
                'Rs.5.00 + tax', 'Reported speech - normal expressions ', 42),
            buildContainer(
                'Rs.15.00 + tax', 'Reported speech - request/inquary ', 43),
            buildContainer(
                'Rs.15.00 + tax', 'Reported speech - yes/no questions ', 44),
            buildContainer(
                'Rs.15.00 + tax', 'Reported speech - WH questions', 45),
            buildContainer('Rs.25.00 + tax', 'Unless', 46),
            buildContainer('Rs.25.00 + tax', 'Such as/like', 47),
            buildContainer('Rs.25.00 + tax', 'Also/too', 48),
            buildContainer('Rs.25.00 + tax', 'Too/enough', 49),
            buildContainer('Rs.25.00 + tax', 'Too/enough', 50),
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
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(17),
                        // fontWeight: FontWeight.bold,
                        // color: kPrimaryColor,
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
