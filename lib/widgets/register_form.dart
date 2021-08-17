import 'dart:convert';

import 'package:mr_english/api/notification_api.dart';

import '../models/http_exception.dart';
import '../providers/auth.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../size_config.dart';
import 'default_button.dart';
import 'package:http/http.dart' as http;

enum RegisterMode { Name, NICNo, Password, Final }

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  RegisterMode _registerMode = RegisterMode.Name;
  var _isLoading = false;
  String _referenceNo;

  Map<String, String> _registerData = {
    "firstName": "",
    "lastName": "",
    "nICNo": "",
    "password": "",
    "phoneNo": ""
  };
  // String nICNo;
  // String password;

  final _passwordController = TextEditingController();
  var errorMessage;

  @override
  void initState() {
    super.initState();
    NotificationApi.init(initScheduled: true);
    listenNotifications();
  }

  void listenNotifications() =>
      NotificationApi.onNotifications.stream.listen(onClickedNotification);

  void onClickedNotification(String payload) =>
      Navigator.of(context).pushNamed(payload);

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Error 1ක් තියනවා.'),
        content: Text(message),
        actions: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.of(ctx).pop();
                // Navigator.pushNamed(context, SignInScreen.routeName);
              },
              child: Text('OK'))
        ],
      ),
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      // Invalid!
      return;
    }
    _formKey.currentState.save();
    setState(() {
      _isLoading = true;
    });

    try {
      if (_registerMode == RegisterMode.Password) {
        await Provider.of<Auth>(context, listen: false).signup(
            _registerData['firstName'],
            _registerData['lastName'],
            _registerData['nICNo'],
            _registerData['password'],
            '0000000000');
      }
    } on HttpException catch (error) {
      if (error.toString().contains('Duplicate field value entered')) {
        errorMessage = 'ඔබ ලබා දුන් ජාතික හැදුනුම්පත් අංකය භාවිතා කොට ඇත.';
      } else {
        errorMessage = 'Register වීම අසාර්ථකයි.';
      }
      _showErrorDialog(errorMessage);
    } catch (error) {
      var errorMessage = 'ඔබව මේ මොහොතේ හඳුනාගත නොහැක. පසුව උත්සහා කරන්න.';
      _showErrorDialog(errorMessage);
    }

    setState(() {
      _isLoading = false;
    });
    print(_registerMode);

    _switchAuthMode();
    if (_registerMode == RegisterMode.Final && errorMessage == null) {
      notification01();
      notification02();
      notification03();
      notification04();
      notification05();
      notification06();
      notification07();
      notification08();
      notification09();
      notification10();
      notification11();
      notification12();
      notification13();
      notification14();
      notification15();
      notification16();
      notification17();
      notification18();
      notification19();
      notification20();
      notification21();
      notification22();
      notification23();
      notification24();
      notification25();
      notification26();
      notification27();
      notification28();
      notification29();
      notification30();
      notification31();
      notification32();
      notification33();
      notification34();
      notification35();
      notification36();
      notification37();
      notification38();
      notification39();

      notification40();
      notification41();
      notification42();
      notification43();

      notification44();
      notification45();
      notification46();
      notification47();
      notification48();
      notification49();
      notification50();
      notification51();
      notification52();
      notification53();
      notification54();
      notification55();
      notification56();
      notification57();
      notification58();
      notification59();
      notification60();

      NotificationApi.showNotification(
        title: 'Welcome to Mr English',
        body: 'Good Luck for your English journey',
        payload: '/',
      );
      Navigator.popAndPushNamed(context, '/');
    }
  }

  void notification01() {
    NotificationApi.showScheduledNotification(
      title: 'A හා An පැටලෙනවාද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 1 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 1)),
    );
  }

  void notification02() {
    NotificationApi.showScheduledNotification(
      title: 'Nouns හා Verbs ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 1 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 2)),
    );
  }

  void notification03() {
    NotificationApi.showScheduledNotification(
      title: 'Singular පද හරියට plural කරන්න දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 2 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 3)),
    );
  }

  void notification04() {
    NotificationApi.showScheduledNotification(
      title: 'That හා This පැටලෙනවාද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 3 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 4)),
    );
  }

  void notification05() {
    NotificationApi.showScheduledNotification(
      title: 'Adjectives හා Adverbs ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 4 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 5)),
    );
  }

  void notification06() {
    NotificationApi.showScheduledNotification(
      title: 'There is හා There are ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 4 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 6)),
    );
  }

  void notification07() {
    NotificationApi.showScheduledNotification(
      title: 'Places සම්බන්ධ Preposition ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 5 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 7)),
    );
  }

  void notification08() {
    NotificationApi.showScheduledNotification(
      title: 'Time  සම්බන්ධ Preposition ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 6 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 8)),
    );
  }

  void notification09() {
    NotificationApi.showScheduledNotification(
      title: 'බහුලව භාවිතා වන Preposition ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 6 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 9)),
    );
  }

  void notification10() {
    NotificationApi.showScheduledNotification(
      title: 'Be verbs ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 7 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 10)),
    );
  }

  void notification11() {
    NotificationApi.showScheduledNotification(
      title: 'Simple present tense ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 7 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 11)),
    );
  }

  void notification12() {
    NotificationApi.showScheduledNotification(
      title: 'Simple past tense ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 8 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 12)),
    );
  }

  void notification13() {
    NotificationApi.showScheduledNotification(
      title: 'Simple future tense ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 9 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 13)),
    );
  }

  void notification14() {
    NotificationApi.showScheduledNotification(
      title: 'Continuous tense ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 9 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 14)),
    );
  }

  void notification15() {
    NotificationApi.showScheduledNotification(
      title: 'Present perfect tense ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 10 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 15)),
    );
  }

  void notification16() {
    NotificationApi.showScheduledNotification(
      title: 'Past perfect tense ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 11 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 16)),
    );
  }

  void notification17() {
    NotificationApi.showScheduledNotification(
      title: 'Future perfect tense ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 11 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 17)),
    );
  }

  void notification18() {
    NotificationApi.showScheduledNotification(
      title: 'Perfect continuous tense ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 12 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 18)),
    );
  }

  void notification19() {
    NotificationApi.showScheduledNotification(
      title: 'The ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 13 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 19)),
    );
  }

  void notification20() {
    NotificationApi.showScheduledNotification(
      title: 'Yes/ No question ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 14 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 20)),
    );
  }

  void notification21() {
    NotificationApi.showScheduledNotification(
      title: 'Wh question ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 15 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 21)),
    );
  }

  void notification22() {
    NotificationApi.showScheduledNotification(
      title: 'Let\'s හා Shall පැටලෙනවාද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 16 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 22)),
    );
  }

  void notification23() {
    NotificationApi.showScheduledNotification(
      title: 'Can හා Could ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 16 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 23)),
    );
  }

  void notification24() {
    NotificationApi.showScheduledNotification(
      title: 'Should හා Must පැටලෙනවාද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 17 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 24)),
    );
  }

  void notification25() {
    NotificationApi.showScheduledNotification(
      title: 'May හා  Might පැටලෙනවාද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 17 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 25)),
    );
  }

  void notification26() {
    NotificationApi.showScheduledNotification(
      title: 'Posseesive adjectives ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 18 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 26)),
    );
  }

  void notification27() {
    NotificationApi.showScheduledNotification(
      title: 'Reflecxive Pronouns ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 18 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 27)),
    );
  }

  void notification28() {
    NotificationApi.showScheduledNotification(
      title: 'Question Tags ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 19 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 28)),
    );
  }

  void notification29() {
    NotificationApi.showScheduledNotification(
      title: 'Conjunctions ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 20 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 29)),
    );
  }

  void notification30() {
    NotificationApi.showScheduledNotification(
      title: 'Because හා So පැටලෙනවාද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 21 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 30)),
    );
  }

  void notification31() {
    NotificationApi.showScheduledNotification(
      title: 'Conjuctive Adverbs ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 22 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 31)),
    );
  }

  void notification32() {
    NotificationApi.showScheduledNotification(
      title: '0 and 1st Conditions ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 23 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 32)),
    );
  }

  void notification33() {
    NotificationApi.showScheduledNotification(
      title: '2nd and 3rd Conditions ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 24 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 33)),
    );
  }

  void notification34() {
    NotificationApi.showScheduledNotification(
      title: 'Little හා Few පැටලෙනවාද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 25 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 34)),
    );
  }

  void notification35() {
    NotificationApi.showScheduledNotification(
      title: 'Somebody, Nobody, Everybody ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 25 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 35)),
    );
  }

  void notification36() {
    NotificationApi.showScheduledNotification(
      title: 'Unless ගැන දන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 26 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 36)),
    );
  }

  void notification37() {
    NotificationApi.showScheduledNotification(
      title: 'Such as හා Like පැටලෙනවාද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 26 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 37)),
    );
  }

  void notification38() {
    NotificationApi.showScheduledNotification(
      title: 'Also හා Too පැටලෙනවාද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 27 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 38)),
    );
  }

  void notification39() {
    NotificationApi.showScheduledNotification(
      title: 'Too හා Enough පැටලෙනවාද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 27 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 39)),
    );
  }

  void notification40() {
    NotificationApi.showScheduledNotification(
      title: 'Relative Pronouns ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 28 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 40)),
    );
  }

  void notification41() {
    NotificationApi.showScheduledNotification(
      title: 'Relative Claauses ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 28 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 41)),
    );
  }

  void notification42() {
    NotificationApi.showScheduledNotification(
      title: 'Simple - Passive Voice ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 29 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 42)),
    );
  }

  void notification43() {
    NotificationApi.showScheduledNotification(
      title: 'Continuous - Passive Voice ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 30 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 43)),
    );
  }

  void notification44() {
    NotificationApi.showScheduledNotification(
      title: 'Perfect - Passive Voice ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 31 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 44)),
    );
  }

  void notification45() {
    NotificationApi.showScheduledNotification(
      title: 'Reported Speech - Present ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 32 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 45)),
    );
  }

  void notification46() {
    NotificationApi.showScheduledNotification(
      title: 'Reported Speech - Normal Expressions ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 32 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 46)),
    );
  }

  void notification47() {
    NotificationApi.showScheduledNotification(
      title: 'Reported Speech - Requests ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 33 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 47)),
    );
  }

  void notification48() {
    NotificationApi.showScheduledNotification(
      title: 'Reported Speech - Yes No Questions ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 34 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 48)),
    );
  }

  void notification49() {
    NotificationApi.showScheduledNotification(
      title: 'Reported Speech - WH Questions ගැන හැමදේම දැනගන්න.',
      body:
          'දැන්ම Basic English within 40 Days course එකෙහි 34 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 49)),
    );
  }

  void notification50() {
    NotificationApi.showScheduledNotification(
      title: 'Notes ලියන්න දැන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 35 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 50)),
    );
  }

  void notification51() {
    NotificationApi.showScheduledNotification(
      title: 'Notice ලියන්න දැන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 35 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 51)),
    );
  }

  void notification52() {
    NotificationApi.showScheduledNotification(
      title: 'Informal Letters ලියන්න දැන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 36 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 52)),
    );
  }

  void notification53() {
    NotificationApi.showScheduledNotification(
      title: 'Formal Letters ලියන්න දැන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 36 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 53)),
    );
  }

  void notification54() {
    NotificationApi.showScheduledNotification(
      title: 'Bar Chart විස්තර කරන්න දැන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 37 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 54)),
    );
  }

  void notification55() {
    NotificationApi.showScheduledNotification(
      title: 'Pie Chart විස්තර කරන්න දැන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 37 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 55)),
    );
  }

  void notification56() {
    NotificationApi.showScheduledNotification(
      title: 'Table විස්තර කරන්න දැන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 38 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 56)),
    );
  }

  void notification57() {
    NotificationApi.showScheduledNotification(
      title: 'Dialogue ලියන්න දැන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 39 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 57)),
    );
  }

  void notification58() {
    NotificationApi.showScheduledNotification(
      title: 'Story ලියන්න දැන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 40 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 58)),
    );
  }

  void notification59() {
    NotificationApi.showScheduledNotification(
      title: 'Speech ලියන්න දැන් නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි 40 වන දවසේ පාඩම් අධ්‍යනය කරන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 59)),
    );
  }

  void notification60() {
    NotificationApi.showScheduledNotification(
      title: 'දින 40ම සම්පුර්ණ කලේ නැත්ද?',
      body:
          'එහෙනම් දැන්ම Basic English within 40 Days course එකෙහි සියලුම දින සම්පුර්ණ කර වටිනා සහතික පත්‍රය නිවසටම ගෙන්නා ගන්න.',
      payload: '/',
      scheduledDate: DateTime.now().add(Duration(days: 60)),
    );
  }

  void _switchAuthMode() {
    if (_registerMode == RegisterMode.Name) {
      setState(() {
        _registerMode = RegisterMode.NICNo;
      });
    } else if (_registerMode == RegisterMode.NICNo) {
      setState(() {
        _registerMode = RegisterMode.Password;
      });
    } else if (_registerMode == RegisterMode.Password) {
      setState(() {
        _registerMode = RegisterMode.Final;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Column(
            children: [
              if (_registerMode == RegisterMode.Name)
                Container(
                  child: Text('ඔබේ මුල් නම හා අග නම ඇතුළත් කරන්න.'),
                ),
              if (_registerMode == RegisterMode.NICNo)
                Container(
                  child: Text(
                      'ඔබේ හෝ ඔබගේ මවගේ හෝ ඔබගේ පියාගේ හෝ ජාතික හැඳුනුම්පත් අංකය ඇතුළත් කරන්න.'),
                ),
              if (_registerMode == RegisterMode.Password)
                Container(
                  child: Text(
                      'මතක තබා ගැනීමට පහසු අකුරු හෝ ඉලක්කම් 8කට වඩා වැඩි password  එක දෙවරක් ඇතුලත් කරන්න. මෙය මතක තබා ගැනීම අනිවාර්ය වේ.'),
                ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Form(
                  key: _formKey,
                  child: Column(children: [
                    if (_registerMode == RegisterMode.Name)
                      buildFirstNameFormField(),
                    SizedBox(
                      height: getProportionateScreenHeight(30),
                    ),
                    if (_registerMode == RegisterMode.Name)
                      buildLastNameFormField(),
                    SizedBox(
                      height: getProportionateScreenHeight(30),
                    ),
                    if (_registerMode == RegisterMode.NICNo)
                      buildNICNoFormField(),
                    SizedBox(
                      height: getProportionateScreenHeight(30),
                    ),
                    if (_registerMode == RegisterMode.Password)
                      buildPasswordFormField(),
                    SizedBox(
                      height: getProportionateScreenHeight(30),
                    ),
                    if (_registerMode == RegisterMode.Password)
                      buildConfirmPasswordFormField(),
                    SizedBox(
                      height: getProportionateScreenHeight(30),
                    ),
                    DefaultButton(
                      text: 'Next',
                      press: () => {
                        (_isLoading) ? CircularProgressIndicator() : _submit()
                      },
                    )
                  ])),
            ],
          );
  }

  TextFormField buildNICNoFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (value) => _registerData['nICNo'] = value,
      decoration: InputDecoration(
        labelText: 'NIC no ( ජාතික හැඳුනුම්පත් අංකය )',
        hintText: 'Enter your NIC no',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        if (value.isEmpty || value.length < 10) {
          return 'Input the NIC no';
        }
      },
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.name,
      controller: _passwordController,
      validator: (value) {
        if (value.isEmpty || value.length < 8) {
          return 'Password is too short';
        }
        return null;
      },
      onSaved: (value) => _registerData['password'] = value,
      decoration: InputDecoration(
        labelText: 'password',
        hintText: 'Enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value != _passwordController.text) {
          return 'Password do not match';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Confirm password',
        hintText: 'Confirm your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (value) => _registerData['firstName'] = value,
      decoration: InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Input the first name';
        }
      },
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (value) => _registerData['lastName'] = value,
      decoration: InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter your last name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Input the last name';
        }
      },
    );
  }
}
