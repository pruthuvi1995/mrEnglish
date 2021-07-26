import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ClassStudent with ChangeNotifier {
  final String id;
  final String nICNo;
  final String className;
  final String title;
  final String description;
  bool isActive;
  final String authToken;

  ClassStudent({
    @required this.id,
    @required this.nICNo,
    @required this.className,
    @required this.title,
    @required this.description,
    this.isActive = false,
    @required this.authToken,
  });
}
