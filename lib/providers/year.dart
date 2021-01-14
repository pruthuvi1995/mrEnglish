import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Year with ChangeNotifier {
  final String id;
  final String yearDetailsId;
  final String year;
  final String amount;
  bool isActive;
  final String authToken;

  Year({
    this.yearDetailsId,
    @required this.id,
    @required this.year,
    @required this.amount,
    this.isActive = false,
    @required this.authToken,
  });
}
