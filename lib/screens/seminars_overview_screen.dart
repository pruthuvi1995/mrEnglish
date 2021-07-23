import 'package:flutter/material.dart';
import 'package:mr_english/providers/seminars.dart';
import 'package:mr_english/widgets/seminars_grid.dart';
// import '../providers/lessons.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../size_config.dart';
import '../widgets/days_grid.dart';

import '../providers/days.dart';

enum FilterOptions {
  AllSeminars,
  CompletedSeminars,
  ActiveSeminars,
}

class SeminarsOverviewScreen extends StatefulWidget {
  static const String routeName = '/seminars_overview';
  @override
  _SeminarsOverviewScreenState createState() => _SeminarsOverviewScreenState();
}

class _SeminarsOverviewScreenState extends State<SeminarsOverviewScreen> {
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

      Provider.of<Seminars>(context).fetchAndSetSeminars().then((_) {
        setState(() {
          _isLoading = false;
        });
      });

      _isInit = false;
    }

    super.didChangeDependencies();
  }

  Future<void> _refreshSeminars(BuildContext context) async {
    await Provider.of<Seminars>(context, listen: false).fetchAndSetSeminars();
    // await Provider.of<Lessons>(context, listen: false).fetchAndSetLessons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Seminars',
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
                if (selectValue == FilterOptions.ActiveSeminars) {
                  _showOnlyActive = true;
                  _showOnlyComplete = false;
                } else if (selectValue == FilterOptions.CompletedSeminars) {
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
                  'All Seminars',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(15),
                  ),
                ),
                value: FilterOptions.AllSeminars,
              ),
              PopupMenuItem(
                child: Text(
                  'Completed Seminars',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(15),
                  ),
                ),
                value: FilterOptions.CompletedSeminars,
              ),
              PopupMenuItem(
                child: Text(
                  'Active Seminars',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(15),
                  ),
                ),
                value: FilterOptions.ActiveSeminars,
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
              onRefresh: () => _refreshSeminars(context),
              child: SeminarsGrid(_showOnlyActive)),
    );
  }
}
