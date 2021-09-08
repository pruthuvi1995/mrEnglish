import 'package:flutter/material.dart';
import 'package:mr_english/providers/chapters.dart';
import 'package:mr_english/providers/seminars.dart';
import 'package:mr_english/widgets/presentation_skills_grid.dart';
import 'package:mr_english/widgets/seminars_grid.dart';
// import '../providers/lessons.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../size_config.dart';
import '../widgets/days_grid.dart';

import '../providers/days.dart';

enum FilterOptions {
  AllChapters,
  CompletedChapters,
  ActiveChapters,
}

class PresentationSkillsOverviewScreen extends StatefulWidget {
  static const String routeName = '/presentation-skills-overview';
  @override
  _PresentationSkillsOverviewScreenState createState() =>
      _PresentationSkillsOverviewScreenState();
}

class _PresentationSkillsOverviewScreenState
    extends State<PresentationSkillsOverviewScreen> {
  var _showOnlyActive = false;
  var _showOnlyComplete = false;
  var _isInit = true;
  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<Chapters>(context).fetchAndSetChapters().then((_) {
        setState(() {
          _isLoading = false;
        });
      });

      _isInit = false;
    }

    super.didChangeDependencies();
  }

  Future<void> _refreshChapters(BuildContext context) async {
    await Provider.of<Chapters>(context, listen: false).fetchAndSetChapters();
    // await Provider.of<Lessons>(context, listen: false).fetchAndSetLessons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Presentation Skills',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(17),
          ),
        ),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectValue) {
              setState(() {
                if (selectValue == FilterOptions.ActiveChapters) {
                  _showOnlyActive = true;
                  _showOnlyComplete = false;
                } else if (selectValue == FilterOptions.CompletedChapters) {
                  _showOnlyComplete = true;
                  _showOnlyActive = false;
                } else {
                  _showOnlyComplete = false;
                  _showOnlyActive = false;
                }
              });
            },
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text(
                  'All Chapters',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(15),
                  ),
                ),
                value: FilterOptions.AllChapters,
              ),
              PopupMenuItem(
                child: Text(
                  'Completed Chapters',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(15),
                  ),
                ),
                value: FilterOptions.CompletedChapters,
              ),
              PopupMenuItem(
                child: Text(
                  'Active Chapters',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(15),
                  ),
                ),
                value: FilterOptions.ActiveChapters,
              ),
            ],
          ),
        ],
      ),
      body: _isLoading
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
          : RefreshIndicator(
              onRefresh: () => _refreshChapters(context),
              child: PresentationSkillsGrid(_showOnlyActive)),
    );
  }
}
