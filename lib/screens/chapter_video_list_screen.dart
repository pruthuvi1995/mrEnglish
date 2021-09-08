import 'package:mr_english/providers/chapters.dart';

import '../providers/papers.dart';
import './paper_video_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../size_config.dart';

class ChapterVideoListScreen extends StatefulWidget {
  static const String routeName = '/chapter-video-list';

  @override
  _ChapterVideoListScreenState createState() => _ChapterVideoListScreenState();
}

class _ChapterVideoListScreenState extends State<ChapterVideoListScreen> {
  // final appBar = AppBar(
  //   title: Text(
  //     '',
  //     style: TextStyle(
  //       color: kPrimaryColor,
  //       fontWeight: FontWeight.bold,
  //       fontSize: getProportionateScreenHeight(17),
  //     ),
  //   ),
  // );

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
    final chapterId = ModalRoute.of(context).settings.arguments as String;

    final loadedChapter = Provider.of<Chapters>(context).findByID(chapterId);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          loadedChapter.title,
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(17),
          ),
        ),
      ),
      body: _isLoading || loadedChapter == null
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
                child: Column(children: [
                  Container(
                    height: getProportionateScreenHeight(675),
                    child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                        ...(loadedChapter.videoList as List).map(
                          (video) {
                            buildGestureDetector(
                              context,
                              video['videoURL'],
                              video['name'],
                            );
                          },
                        ).toList(),
                      ]),
                    ),
                  ),
                ]),
              ),
            ),
    );
  }

  GestureDetector buildGestureDetector(
      BuildContext context, String videoUrl, String name) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          PaperVideoScreen.routeName,
          arguments: [videoUrl, name],
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 5, left: 5, bottom: 5),
        height: getProportionateScreenWidth(125),
        child: Card(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: getProportionateScreenHeight(5),
                    right: getProportionateScreenHeight(10)),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(getProportionateScreenWidth(100)),
                  child: Container(
                    // margin:
                    //     EdgeInsets.only(left: getProportionateScreenHeight(5)),
                    height: getProportionateScreenWidth(100),
                    width: getProportionateScreenWidth(100),
                    color: kPrimaryColor,
                    child: Center(
                      child: Text(
                        '111',
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(40),
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(20),
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                    Divider(
                      height: getProportionateScreenHeight(5),
                    ),
                  ],
                ),
              )
            ],
          ),
          elevation: 5,
        ),
      ),
    );
  }
}
