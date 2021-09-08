import 'package:mr_english/providers/chapter.dart';
import 'package:mr_english/providers/chapters.dart';
import 'package:mr_english/providers/seminar.dart';
import 'package:mr_english/providers/seminars.dart';

import '../providers/year.dart';
import '../providers/years.dart';
import './year_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../size_config.dart';
import 'chapter_item.dart';
import 'seminar_item.dart';

class PresentationSkillsGrid extends StatelessWidget {
  final bool showActive;

  PresentationSkillsGrid(this.showActive);

  List<Chapter> findList(bool showActive, Chapters chaptersData) {
    if (showActive) {
      return chaptersData.activeChapters;
    } else {
      return chaptersData.items;
    }
  }

  @override
  Widget build(BuildContext context) {
    final chaptersData = Provider.of<Chapters>(context);
    var chapters = findList(showActive, chaptersData);

    return GridView.builder(
      padding: EdgeInsets.all(getProportionateScreenHeight(10)),
      itemCount: chapters.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: chapters[i],
        child: ChapterItem(
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
        childAspectRatio: 6 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 2,
      ),
    );
  }
}
