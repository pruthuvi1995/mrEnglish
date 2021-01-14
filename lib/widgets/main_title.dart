import 'package:flutter/material.dart';
import '../constants.dart';

import '../size_config.dart';

class MainTitle extends StatefulWidget {
  final String titleText;
  final Widget info;

  MainTitle(this.titleText, this.info);

  @override
  _MainTitleState createState() => _MainTitleState();
}

class _MainTitleState extends State<MainTitle> {
  var _expanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(getProportionateScreenHeight(14)),
      ),
      margin: EdgeInsets.all(getProportionateScreenHeight(9)),
      padding: EdgeInsets.all(getProportionateScreenHeight(5)),
      child: Column(children: <Widget>[
        ListTile(
          title: Text(
            widget.titleText,
            style: TextStyle(
                fontSize: getProportionateScreenHeight(18),
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          trailing: IconButton(
            icon: Icon(
              _expanded ? Icons.expand_less : Icons.expand_more,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _expanded = !_expanded;
              });
            },
          ),
        ),
        _expanded
            ? Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(getProportionateScreenHeight(14)),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height * .5,
                child: widget.info,
              )
            : SizedBox(
                height: 0,
              )
      ]),
    );
  }
}
