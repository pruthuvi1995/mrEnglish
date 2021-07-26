import 'package:mr_english/providers/class.dart';
import 'package:mr_english/providers/classes.dart';

import '../providers/seminar.dart';
import '../providers/seminars.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../size_config.dart';
import 'class_item.dart';

class ClassesGrid extends StatelessWidget {
  final bool showActive;

  ClassesGrid(this.showActive);

  List<Class> findList(bool showActive, Classes classesData) {
    if (showActive) {
      return classesData.activeClasses;
    } else {
      return classesData.items;
    }
  }

  @override
  Widget build(BuildContext context) {
    final classesData = Provider.of<Classes>(context);
    var classes = findList(showActive, classesData);

    return GridView.builder(
      padding: EdgeInsets.all(getProportionateScreenHeight(10)),
      itemCount: classes.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: classes[i],
        child: ClassItem(
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
        childAspectRatio: 6 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 2,
      ),
    );
  }
}
