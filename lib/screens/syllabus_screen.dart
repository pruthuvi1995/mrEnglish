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
            buildContainer('', 'Nouns, verbs', 1),
            buildContainer('Rs.5.00 + tax', 'Singular & plural nouns', 2),
            buildContainer('Rs.5.00 + tax', 'This/These/That/Those', 3),
            buildContainer('Rs.10.00 + tax', 'Adjectives/Adverbs', 4),
            buildContainer('', 'There is/are/questions', 4),
            buildContainer('Rs.10.00 + tax', 'Prepositions - places', 5),
            buildContainer('Rs.15.00 + tax', 'Prepositions - time', 6),
            buildContainer('', 'Prepositions - other', 6),
            buildContainer('', 'Tenses introduction/pronouns', 7),
            buildContainer(
                'Rs.15.00 + tax', 'Simple present tense/Negative', 7),
            buildContainer('Rs.10.00 + tax', 'Simple past tense/Negative ', 8),
            buildContainer(
                'Rs.15.00 + tax', 'Simple future tense/Negative ', 9),
            buildContainer('', 'Continuous tense/Be verbs', 9),
            buildContainer(
                'Rs.15.00 + tax', 'Present perfect tense/Negative ', 10),
            buildContainer(
                'Rs.10.00 + tax', 'Past/Future perfect tense/Negative', 11),
            buildContainer(
                'Rs.10.00 + tax', 'Prefect continious tense/Negative ', 12),
            buildContainer('Rs.10.00 + tax', 'The article', 13),
            buildContainer('Rs.15.00 + tax', 'Yes/No questions', 14),
            buildContainer('Rs.15.00 + tax', 'WH questions ', 15),
            buildContainer('', 'Let\'s/shall we', 16),
            buildContainer('Rs.15.00 + tax', 'Can/could/Negative', 16),
            buildContainer('Rs.15.00 + tax', 'Should/must/Negative', 17),
            buildContainer('', 'Have to/has to/may/might/aught to', 17),
            buildContainer(
                'Rs.15.00 + tax', 'Possesive adjectives/pronouns', 18),
            buildContainer('', 'Reflective pronouns', 18),
            buildContainer('Rs.10.00 + tax', 'Question tags/short answers', 19),
            buildContainer('Rs.15.00 + tax', 'Conjunctions (1)', 20),
            buildContainer('', 'Conjunctions (2)', 20),
            buildContainer('Rs.15.00 + tax', 'Conjunctions (3)', 21),
            buildContainer('', 'Although/while/when', 21),
            buildContainer('Rs.30.00 + tax', 'Relative clauses', 22),
            buildContainer('', 'Whome/whose/where/why', 22),
            buildContainer('Rs.10.00 + tax', 'Zero/first condition', 23),
            buildContainer('Rs.10.00 + tax', 'Third condition ', 24),
            buildContainer('Rs.15.00 + tax', 'A little/a few', 25),
            buildContainer('', 'Somebody/nobody', 25),
            buildContainer(
                'Rs.20.00 + tax', 'Passive voice - simple tense', 26),
            buildContainer(
                'Rs.20.00 + tax', 'Passive voice - continuous tense', 27),
            buildContainer(
                'Rs.20.00 + tax', 'Passive voice - perfect tense', 28),
            buildContainer('', 'Reported speech - present', 29),
            buildContainer(
                'Rs.25.00 + tax', 'Reported speech - normal expressions ', 29),
            buildContainer(
                'Rs.20.00 + tax', 'Reported speech - request/inquary ', 30),
            buildContainer(
                'Rs.25.00 + tax', 'Reported speech - yes/no questions ', 31),
            buildContainer('', 'Reported speech - WH questions', 31),
            buildContainer('Rs.20.00 + tax', 'Unless/Such as/like', 32),
            buildContainer('', 'Also/too/Too/enough', 32),
            buildContainer('Rs.25.00 + tax', 'Notes', 33),
            buildContainer('Rs.25.00 + tax', 'Informal letters', 34),
            buildContainer('Rs.25.00 + tax', 'Notice', 35),
            buildContainer('Rs.25.00 + tax', 'Formal letters', 36),
            buildContainer('Rs.25.00 + tax', 'Graph - bar chart', 37),
            buildContainer('', 'Graph - pie chart', 37),
            buildContainer('Rs.25.00 + tax', 'Graph - table', 38),
            buildContainer('', 'Graph - venn diagram', 38),
            buildContainer('Rs.25.00 + tax', 'Dialog', 39),
            buildContainer('Rs.25.00 + tax', 'Story writing', 40),
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
      // height: getPropor/tionateScreenHeight(90),
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
                        fontSize: getProportionateScreenWidth(14),
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                      softWrap: true,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
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
