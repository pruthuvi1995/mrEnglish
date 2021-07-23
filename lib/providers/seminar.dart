import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Seminar with ChangeNotifier {
  final String id;
  final String seminarDetailsId;
  final String title;
  final String description;
  final List videoList;
  final String amount;
  bool isActive;
  final String authToken;

  Seminar({
    this.seminarDetailsId,
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.videoList,
    @required this.amount,
    this.isActive = false,
    @required this.authToken,
  });
}
