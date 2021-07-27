import '../providers/year.dart';
import '../providers/years.dart';
import './year_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../size_config.dart';

class YearsGrid extends StatelessWidget {
  final bool showActive;

  YearsGrid(this.showActive);

  List<Year> findList(bool showActive, Years yearsData) {
    if (showActive) {
      return yearsData.activeYears;
    } else {
      return yearsData.items;
    }
  }

  @override
  Widget build(BuildContext context) {
    final yearsData = Provider.of<Years>(context);
    var years = findList(showActive, yearsData);

    return GridView.builder(
      padding: EdgeInsets.all(getProportionateScreenHeight(10)),
      itemCount: years.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: years[i],
        child: YearItem(
            // days[i].id,
            // days[i].title,
            // days[i].subTitle,
            // days[i].mark,
            // days[i].imageUrl,
            // days[i].iscomplted,
            ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 5 / 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
