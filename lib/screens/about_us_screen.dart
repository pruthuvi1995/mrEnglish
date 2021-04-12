import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/main_title.dart';
import '../constants.dart';
import '../size_config.dart';

class AboutUsScreen extends StatelessWidget {
  static const String routeName = '/about-us';
  final appBar = AppBar(
    title: Text(
      'About Us',
      style: TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
        fontSize: getProportionateScreenHeight(17),
      ),
    ),
  );

  Widget aboutMalithsir(context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 200,
          child: ClipRRect(
            child: Image.asset(
              'assets/images/malitha.jpg',
              fit: BoxFit.cover,
              height: getProportionateScreenHeight(250),
              width: double.infinity,
            ),
          ),
        ),
        Container(
          child: Column(
            children: [
              Text(
                'Malitha Welipitiya is a national school teacher, English Grammar - Spoken instructor & author. A graduate from Rajarata university of Sri Lanka.   Founder of Golden Talks English Academy.',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Divider(),
              Text(
                'Contact details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Divider(),
              Text(
                'Contact: 071-8305757/ 076-0855757',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Text(
                'Whatsapp: 071-8305757',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Text(
                'Email: welipitiyawmms.cda@gmail.com',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(getProportionateScreenHeight(10)),
        )
      ],
    );
  }

  Widget aboutAcademy(context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 200,
          child: ClipRRect(
            child: Image.asset(
              'assets/images/gtea.jpeg',
              fit: BoxFit.cover,
              height: getProportionateScreenHeight(250),
              width: double.infinity,
            ),
          ),
        ),
        Container(
          child: Column(
            children: [
              Text(
                'Golden talks english academy is not a regular english class. It is an english language center & online academy, which number of students are nourished with english grammar & spoken, along with the vision of supporting students to achieve "Beyond their English dream".',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Divider(),
              Text(
                'Contact details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Divider(),
              Text(
                'Contact: 071-8305757/ 076-0855757',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Text(
                'Whatsapp: 071-8305757',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Text(
                'Email: welipitiyawmms.cda@gmail.com',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(getProportionateScreenHeight(10)),
        )
      ],
    );
  }

  Widget aboutClasses(context) {
    return ListView(
      children: <Widget>[
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Online classes: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Divider(),
              Text(
                'Spoken english course for O/L, A/L &   adults.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Text(
                'O/L past papers discussion class for O/L students & adults.',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Divider(),
              Text(
                'Normal classes: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Divider(),
              Text(
                'Spoken english course for O/L, A/L & adults.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Text(
                'O/L past papers discussion class for O/L students & adults.',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Text(
                'Grade 7,8,9,10 English Grammar classes. ( Group & individual )',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(getProportionateScreenHeight(10)),
        )
      ],
    );
  }

  Widget aboutTeam(context) {
    return ListView(
      children: <Widget>[
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Developer: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Divider(),
              Text(
                'Pruthuvi Hasanjana',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Divider(),
              Text(
                'Contact details: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
              Divider(),
              Text(
                'Email: pruthuvi1995@gmail.com',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(getProportionateScreenHeight(10)),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: AppDrawer(),
      body: Container(
        height: MediaQuery.of(context).size.height -
            appBar.preferredSize.height -
            MediaQuery.of(context).padding.top,
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            MainTitle('About Malith Sir', aboutMalithsir(context)),
            MainTitle(
                'About Golden Talks English Academy ', aboutAcademy(context)),
            MainTitle('About classes', aboutClasses(context)),
            MainTitle('Our Team', aboutTeam(context))
          ]),
        ),
      ),
    );
  }
}
