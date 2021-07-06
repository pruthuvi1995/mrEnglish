// import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

import '../widgets/button_widget.dart';

import '../constants.dart';
import '../size_config.dart';
import 'package:flutter/material.dart';

class SampleEssayQuestionScreen extends StatefulWidget {
  static const routeName = '/sample-essay-question';

  @override
  _SampleEssayQuestionScreenState createState() =>
      _SampleEssayQuestionScreenState();
}

class _SampleEssayQuestionScreenState extends State<SampleEssayQuestionScreen> {
  final url = 'https://www.un.org/Depts/Cartographic/map/profile/srilanka.pdf';
  // PDFDocument _doc;
  bool _loading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      _loading = true;
    });
    // final doc = await PDFDocument.fromURL(url);
    setState(() {
      // _doc = doc;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final dayId = ModalRoute.of(context).settings.arguments as List;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sample Essay Questions',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(17),
          ),
          textAlign: TextAlign.center,
        ),
      ),
      //   body: _loading
      //       ? Center(
      //           child: CircularProgressIndicator(),
      //         )
      //       : PDFViewer(
      //           document: _doc,
      //         ),
    );
  }
}
