import '../providers/papers.dart';
import './paper_video_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../size_config.dart';

class PaperScreen extends StatefulWidget {
  static const String routeName = '/paper';

  @override
  _PaperScreenState createState() => _PaperScreenState();
}

class _PaperScreenState extends State<PaperScreen> {
  final appBar = AppBar(
    title: Text(
      'Paper discussion',
      style: TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
        fontSize: getProportionateScreenHeight(17),
      ),
    ),
  );

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
    final yearId = ModalRoute.of(context).settings.arguments as String;
    print(yearId);
    final loadedPaper = Provider.of<Papers>(context).findByID(yearId);

    return Scaffold(
      appBar: appBar,
      body: _isLoading || loadedPaper == null
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
                  Text(
                    loadedPaper.title,
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(20),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: getProportionateScreenHeight(675),
                    child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                        buildGestureDetector(
                            context,
                            loadedPaper.question01,
                            loadedPaper.descriptionQ01,
                            '1st paper - 1st question',
                            '01'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question02,
                            loadedPaper.descriptionQ02,
                            '1st paper - 2nd question',
                            '02'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question03,
                            loadedPaper.descriptionQ03,
                            '1st paper - 3rd question',
                            '03'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question04,
                            loadedPaper.descriptionQ04,
                            '1st paper - 4th question',
                            '04'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question05,
                            loadedPaper.descriptionQ05,
                            '1st paper - 5th question',
                            '05'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question06,
                            loadedPaper.descriptionQ06,
                            '1st paper - 6th question',
                            '06'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question07,
                            loadedPaper.descriptionQ07,
                            '1st paper - 7th question',
                            '07'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question08,
                            loadedPaper.descriptionQ08,
                            '1st paper - 8th question',
                            '08'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question09,
                            loadedPaper.descriptionQ09,
                            '2nd paper - 1st question',
                            '09'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question10,
                            loadedPaper.descriptionQ10,
                            '2nd paper - 2nd question',
                            '10'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question11,
                            loadedPaper.descriptionQ11,
                            '2nd paper - 3rd question',
                            '11'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question12,
                            loadedPaper.descriptionQ12,
                            '2nd paper - 4th question',
                            '12'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question13,
                            loadedPaper.descriptionQ13,
                            '2nd paper - 5th question',
                            '13'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question14,
                            loadedPaper.descriptionQ14,
                            '2nd paper - 6th question',
                            '14'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question15,
                            loadedPaper.descriptionQ15,
                            '2nd paper - 7th question',
                            '15'),
                        buildGestureDetector(
                            context,
                            loadedPaper.question15,
                            loadedPaper.descriptionQ16,
                            '2nd paper - 8th question',
                            '16'),
                      ]),
                    ),
                  ),
                ]),
              ),
            ),
    );
  }

  GestureDetector buildGestureDetector(BuildContext context, String videoUrl,
      String description, String title, String qNo) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          PaperVideoScreen.routeName,
          arguments: [videoUrl, title],
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
                        qNo,
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
                      title,
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(20),
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                    Divider(
                      height: getProportionateScreenHeight(5),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(15),
                      ),
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
