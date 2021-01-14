import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Course with ChangeNotifier {
  final String title;
  final String description;

  Course({
    @required this.title,
    @required this.description,
  });
}
