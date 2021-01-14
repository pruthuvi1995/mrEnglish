import '../size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './day_item.dart';
import '../providers/days.dart';
import '../providers/day.dart';

class DaysGrid extends StatelessWidget {
  final bool showActive;
  final bool showComplete;

  DaysGrid(this.showActive, this.showComplete);

  List<Day> findList(bool showActive, bool showComplete, Days daysData) {
    if (showActive && !showComplete) {
      return daysData.activeDays;
    } else if (!showActive && showComplete) {
      return daysData.completedDays;
    } else {
      return daysData.items;
    }
  }

  @override
  Widget build(BuildContext context) {
    final daysData = Provider.of<Days>(context);
    var days = findList(showActive, showComplete, daysData);

    return GridView.builder(
      padding: EdgeInsets.all(getProportionateScreenHeight(10)),
      itemCount: days.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: days[i],
        child: DayItem(
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
        childAspectRatio: 4 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
