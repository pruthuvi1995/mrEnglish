import '../constants.dart';

import 'package:flutter/material.dart';

import '../size_config.dart';

class IssueCertificateScreen extends StatelessWidget {
  static const routeName = '/issue-certificate';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Issue certificate',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(17),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: getProportionateScreenHeight(110)),
        height: getProportionateScreenHeight(475),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(getProportionateScreenHeight(15)),
            ),
            elevation: 6,
            margin: EdgeInsets.all(getProportionateScreenHeight(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(getProportionateScreenHeight(10)),
                    topRight: Radius.circular(getProportionateScreenHeight(10)),
                  ),
                  child: Image.asset(
                    'assets/images/issueCertificate.jpg',
                    fit: BoxFit.cover,
                    height: getProportionateScreenHeight(250),
                    width: double.infinity,
                  ),
                ),
                Container(
                  // decoration: BoxDecoration(
                  //   color: Colors.black54,
                  // ),
                  padding: EdgeInsets.all(getProportionateScreenHeight(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'විශේෂ දැනුම්දීම.',
                        style: TextStyle(
                            fontSize: getProportionateScreenHeight(20),
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      Divider(
                        height: getProportionateScreenHeight(7),
                      ),
                      Text(
                        'සහතික පත්‍රය ලබා ගැනීමට 071 830 57 57 වෙත SMS  1ක් හෝ call 1ක් ලබා දෙන්න. අප ආයතනයෙන් ඔබව සම්බන්ධ කරගෙන සහතික පත්‍රය නිවසටම එවීම සඳහා කටයුතු කරනු ඇත.',
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(13),
                          color: kPrimaryColor,
                        ),
                        softWrap: true,
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: getProportionateScreenHeight(5),
                        left: getProportionateScreenHeight(5),
                        right: getProportionateScreenHeight(5),
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenHeight(15)),
                        color: kPrimaryColor1,
                      ),
                      padding: EdgeInsets.all(getProportionateScreenHeight(10)),
                      child: Text(
                        'Okay',
                        style: TextStyle(
                            fontSize: getProportionateScreenHeight(15),
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
