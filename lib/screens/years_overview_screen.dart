import '../providers/years.dart';
import '../widgets/years_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../size_config.dart';

enum FilterOptions {
  AllYears,
  ActiveYears,
}

class YearsOverviewScreen extends StatefulWidget {
  static const String routeName = '/years_overview';
  @override
  _YearsOverviewScreenState createState() => _YearsOverviewScreenState();
}

class _YearsOverviewScreenState extends State<YearsOverviewScreen> {
  var _showOnlyActive = false;
  var _isInit = true;
  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<Years>(context).fetchAndSetYears().then((_) {
        setState(() {
          _isLoading = false;
        });
      });

      _isInit = false;
    }

    super.didChangeDependencies();
  }

  Future<void> _refreshYears(BuildContext context) async {
    await Provider.of<Years>(context, listen: false).fetchAndSetYears();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'O/L paper discussion',
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
                if (selectValue == FilterOptions.ActiveYears) {
                  _showOnlyActive = true;
                } else {
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
                  'All Years',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(15),
                  ),
                ),
                value: FilterOptions.AllYears,
              ),
              PopupMenuItem(
                child: Text(
                  'Active Years',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(15),
                  ),
                ),
                value: FilterOptions.ActiveYears,
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
              onRefresh: () => _refreshYears(context),
              child: YearsGrid(_showOnlyActive)),
    );
  }
}
