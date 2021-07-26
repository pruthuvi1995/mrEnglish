import 'package:flutter/material.dart';
import 'package:mr_english/providers/classes.dart';
import 'package:mr_english/providers/seminars.dart';
import 'package:mr_english/widgets/classes_grid.dart';
import 'package:mr_english/widgets/seminars_grid.dart';
// import '../providers/lessons.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../size_config.dart';
import '../widgets/days_grid.dart';

import '../providers/days.dart';

enum FilterOptions {
  AllClasses,
  CompletedClasses,
  ActiveClasses,
}

class ClassesScreen extends StatefulWidget {
  final String title;

  ClassesScreen(this.title);
  static const String routeName = '/classes';
  @override
  _ClassesScreenState createState() => _ClassesScreenState(title);
}

class _ClassesScreenState extends State<ClassesScreen> {
  final String title;
  _ClassesScreenState(this.title);
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

      Provider.of<Classes>(context).fetchAndSetClasses(title).then((_) {
        setState(() {
          _isLoading = false;
        });
      });

      _isInit = false;
    }

    super.didChangeDependencies();
  }

  Future<void> _refreshClasses(BuildContext context, String title) async {
    await Provider.of<Classes>(context, listen: false)
        .fetchAndSetClasses(title);
    // await Provider.of<Lessons>(context, listen: false).fetchAndSetLessons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Classes',
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
                if (selectValue == FilterOptions.ActiveClasses) {
                  _showOnlyActive = true;
                  _showOnlyComplete = false;
                } else if (selectValue == FilterOptions.CompletedClasses) {
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
                  'All Classes',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(15),
                  ),
                ),
                value: FilterOptions.AllClasses,
              ),
              PopupMenuItem(
                child: Text(
                  'Completed Classes',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(15),
                  ),
                ),
                value: FilterOptions.CompletedClasses,
              ),
              PopupMenuItem(
                child: Text(
                  'Active Classes',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(15),
                  ),
                ),
                value: FilterOptions.ActiveClasses,
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
              onRefresh: () => _refreshClasses(context, title),
              child: ClassesGrid(_showOnlyActive)),
    );
  }
}
