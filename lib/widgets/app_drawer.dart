import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth.dart';
import '../size_config.dart';
import '../constants.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            backgroundColor: kPrimaryColor,
            title: Text(
              'Hi....Have a nice Day',
              style: TextStyle(
                fontSize: getProportionateScreenHeight(17),
                color: Colors.white,
              ),
            ),
            automaticallyImplyLeading: false,
          ),
          Container(
            height: getProportionateScreenHeight(200),
            child: ClipRRect(
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
                height: getProportionateScreenHeight(250),
                width: double.infinity,
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: getProportionateScreenHeight(20),
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'My profile',
              style: TextStyle(
                fontSize: getProportionateScreenHeight(20),
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/profile');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.book),
            title: Text(
              'Syllabus ',
              style: TextStyle(
                fontSize: getProportionateScreenHeight(20),
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/syllabus');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people),
            title: Text(
              'About Us',
              style: TextStyle(
                fontSize: getProportionateScreenHeight(20),
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/about-us');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: getProportionateScreenHeight(20),
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed('/');
              // Navigator.of(context).pushNamed('/about-us');
              Provider.of<Auth>(context, listen: false).logout();
            },
          ),
        ],
      ),
    );
  }
}
