import 'package:flutter/material.dart';
import '../providers/lessons.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../size_config.dart';
import '../widgets/days_grid.dart';

import '../providers/days.dart';

enum FilterOptions {
  AllDays,
  CompletedDays,
  ActiveDays,
}

class DaysOverviewScreen extends StatefulWidget {
  static const String routeName = '/days_overview';
  @override
  _DaysOverviewScreenState createState() => _DaysOverviewScreenState();
}

class _DaysOverviewScreenState extends State<DaysOverviewScreen> {
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

      Provider.of<Days>(context).fetchAndSetDays().then((_) {
        Provider.of<Lessons>(context, listen: false)
            .fetchAndSetLessons()
            .then((_) {
          setState(() {
            _isLoading = false;
          });
        });
      });

      _isInit = false;
    }

    super.didChangeDependencies();
  }

  Future<void> _refreshDays(BuildContext context) async {
    await Provider.of<Days>(context, listen: false).fetchAndSetDays();
    await Provider.of<Lessons>(context, listen: false).fetchAndSetLessons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Basic English within 60 days',
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
                if (selectValue == FilterOptions.ActiveDays) {
                  _showOnlyActive = true;
                  _showOnlyComplete = false;
                } else if (selectValue == FilterOptions.CompletedDays) {
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
                  'All Days',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(15),
                  ),
                ),
                value: FilterOptions.AllDays,
              ),
              PopupMenuItem(
                child: Text(
                  'Completed Days',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(15),
                  ),
                ),
                value: FilterOptions.CompletedDays,
              ),
              PopupMenuItem(
                child: Text(
                  'Active Days',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(15),
                  ),
                ),
                value: FilterOptions.ActiveDays,
              ),
            ],
          ),
        ],
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : RefreshIndicator(
              onRefresh: () => _refreshDays(context),
              child: DaysGrid(_showOnlyActive, _showOnlyComplete)),
    );
  }
}
