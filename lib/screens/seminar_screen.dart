import '../providers/papers.dart';
import './paper_video_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../size_config.dart';
import 'seminar_video_screen.dart';

class SeminarScreen extends StatefulWidget {
  static const String routeName = '/seminar';

  @override
  _SeminarScreenState createState() => _SeminarScreenState();
}

class _SeminarScreenState extends State<SeminarScreen> {
  AppBar appBar(String title) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
          fontSize: getProportionateScreenHeight(17),
        ),
      ),
    );
  }

  var _isInit = true;

  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<Papers>(context).fetchAndSetPapers().then((_) {
        setState(() {
          _isLoading = false;
        });
      });

      _isInit = false;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final seminar = ModalRoute.of(context).settings.arguments as List;
    final videoList = seminar[1];

    return Scaffold(
      appBar: appBar(seminar[0]),
      body: _isLoading
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'මඳ වේලාවක් රැදී සිටින්න.',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(15),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenWidth(15)),
                  CircularProgressIndicator(),
                ],
              ),
            )
          : Container(
              width: double.infinity,
              // height: height * .4,
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...(videoList as List).map(
                        (video) {
                          return buildGestureDetector(
                              context, video['name'], video['videoURL']);
                        },
                      ).toList()
                    ]),
              ),
            ),
    );
  }

  GestureDetector buildGestureDetector(
      BuildContext context, String name, String videoURL) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(SeminarVideoScreen.routeName,
            arguments: [name, videoURL]);
      },
      child: Container(
        margin: EdgeInsets.only(right: 5, left: 5, bottom: 5),
        height: getProportionateScreenWidth(100),
        child: Card(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(20),
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    color: kPrimaryColor,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          'Let\'s see the video.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: getProportionateScreenHeight(15),
                          ),
                        ),
                        Text(
                          '( වීඩියෝව බලමු. )',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: getProportionateScreenHeight(15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          elevation: 5,
        ),
      ),
    );
  }
}
