import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Chapter with ChangeNotifier {
  final String id;
  final String chapterDetailsId;
  final String title;
  final int chapterNo;
  final List points;
  final List videoList;
  final String amount;
  bool isActive;
  final String authToken;

  Chapter({
    this.chapterDetailsId,
    @required this.id,
    @required this.title,
    @required this.chapterNo,
    @required this.points,
    @required this.videoList,
    @required this.amount,
    this.isActive = false,
    @required this.authToken,
  });
}
