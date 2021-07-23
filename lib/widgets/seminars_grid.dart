import 'package:mr_english/providers/seminar.dart';
import 'package:mr_english/providers/seminars.dart';

import '../providers/year.dart';
import '../providers/years.dart';
import './year_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../size_config.dart';
import 'seminar_item.dart';

class SeminarsGrid extends StatelessWidget {
  final bool showActive;

  SeminarsGrid(this.showActive);

  List<Seminar> findList(bool showActive, Seminars seminarsData) {
    if (showActive) {
      return seminarsData.activeSeminars;
    } else {
      return seminarsData.items;
    }
  }

  @override
  Widget build(BuildContext context) {
    final seminarsData = Provider.of<Seminars>(context);
    var seminars = findList(showActive, seminarsData);

    return GridView.builder(
      padding: EdgeInsets.all(getProportionateScreenHeight(10)),
      itemCount: seminars.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: seminars[i],
        child: SeminarItem(
            // days[i].id,
            // days[i].title,
            // days[i].subTitle,
            // days[i].mark,
            // days[i].imageUrl,
            // days[i].iscomplted,
            ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 6 / 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 2,
      ),
    );
  }
}
