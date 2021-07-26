import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Class with ChangeNotifier {
  final String id;
  final String classDetailsId;
  final String title;
  final String className;
  final String videoURL;
  final String amount;
  bool isActive;
  final String authToken;

  Class({
    this.classDetailsId,
    @required this.id,
    @required this.title,
    @required this.className,
    @required this.videoURL,
    @required this.amount,
    this.isActive = false,
    @required this.authToken,
  });
}
