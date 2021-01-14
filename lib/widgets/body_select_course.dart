import '../screens/days_overview_screen.dart';
import 'package:flutter/material.dart';

class BodySelectCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: GestureDetector(
            onTap: () =>
                {Navigator.pushNamed(context, DaysOverviewScreen.routeName)},
            child: Card(
              child: Text('dina 60 course eka'),
            ),
          ),
        ),
      ],
    );
  }
}
