import 'package:dynamic_widget/dynamic_widget/utils.dart';

import './subscribe_form.dart';

import './register_form.dart';

import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';
import 'default_button.dart';

class BodyBankDetailsScreen extends StatelessWidget {
  final String details;
  BodyBankDetailsScreen(this.details);

  @override
  Widget build(BuildContext context) {
    String amount;
    String duration;
    if (details == 'Basic English within 40 Days') {
      amount = '300.00';
      duration = 'මාස 2ක';
    } else if (details == 'O/L Paper Discussion') {
      amount = '200.00';
      duration = 'මාස 3ක';
    } else if (details == 'Presentation Skills') {
      amount = '200.00';
      duration = 'සති 2ක';
    }
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: SizeConfig.screenHeight * 0.005),
                  Text(
                    'කරුණාකර මෙය හොඳින් කියවන්න.',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: getProportionateScreenWidth(15),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(10),
                  ),
                  Text(
                    '$details පාඨමාලාව හා සම්බන්ධ වීම සඳහා ලබා දීමට ඔබට දුරකථන අංකයක් නොමැති නිසා අපගේ බැංකු ගිණුමට මුදල් දමා මෙම පාඨමාලාව සඳහා පමණක් account එක activate කරගත හැක. ',
                    style: TextStyle(
                      // color: kPrimaryColor,
                      fontSize: getProportionateScreenWidth(12.5),
                    ),
                    // textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(8),
                  ),
                  Text(
                    'මේ සඳහා ඔබේ දුරකථන අංකය හරහා පාඩම් වලට අනුව වෙන වෙනම අය කර ගැනීමට බලාපොරොත්තු වූ මුදල එකවර ගෙවා $duration කාලයක් සඳහා $details පාඨමාලාවට සම්පුර්ණ access ලබා ගත හැකිය. එම කාලය තුල ඔබට පාඨමාලාව සම්පුර්ණ කල හැක.',
                    style: TextStyle(
                      // color: kPrimaryColor,
                      fontSize: getProportionateScreenWidth(12.5),
                    ),
                    // textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(8),
                  ),
                  Text(
                    'පාඨමාලාව සඳහා රුපියල් $amount මුදලක් ගෙවිය යුතුය. ඔබ එයට කැමතිනම් පහත පියවර අනුගමනය කරන්න.',
                    style: TextStyle(
                      // color: kPrimaryColor,
                      fontSize: getProportionateScreenWidth(12.5),
                    ),
                    // textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(8),
                  ),
                  Text(
                    '  පියවර 1: රුපියල් $amountක මුදල පහත සඳහන් කුමන හෝ බැංකු ගිණුමකට තැන්පත් කරන්න.',
                    style: TextStyle(
                      // color: kPrimaryColor,
                      fontSize: getProportionateScreenWidth(12.5),
                    ),
                    // textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(8),
                  ),
                  Text(
                    '  පියවර 2: එහිදී ලබාදෙන receipt එකේ පැහැදිලි photo එකක් ඔබගේ සම්පුර්ණ නම, ජාතික හැඳුනුම්පත් අංකය හා ඔබට අවශ්‍ය පාඨමාලාව සමඟ 070 10 850 33 අංකයට whatsapp කරන්න.',
                    style: TextStyle(
                      // color: kPrimaryColor,
                      fontSize: getProportionateScreenWidth(12.5),
                    ),
                    // textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(8),
                  ),
                  Text(
                    'පැය 24ක් තුළ ඔබගේ account එකේ $details පාඨමාලාව $duration කාලයක් සඳහා active කර ලබා දේ.',
                    style: TextStyle(
                      // color: kPrimaryColor,
                      fontSize: getProportionateScreenWidth(12.5),
                    ),
                    // textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(8),
                  ),
                  Text(
                    'පහත සඳහන් කුමන හෝ බැංකු ගිණුමකට ඔබට මුදල් තැන්පත් කල හැක.',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: getProportionateScreenWidth(15),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(15),
                  ),
                  Container(
                    // padding: EdgeInsets.all(getProportionateScreenHeight(10)),
                    width: infinity.toDouble(),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(7.5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Bank: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Bank of Ceylon',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Account Name: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'A.P.H. Ariyakulasinghe',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Account Number: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '87742675',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Branch: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Galigamuwa',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Amount: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Rs. $amount',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(15),
                  ),
                  Container(
                    // padding: EdgeInsets.all(getProportionateScreenHeight(10)),
                    width: infinity.toDouble(),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(7.5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Bank: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Commercial Bank',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Account Name: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'A.P.H. Ariyakulasinghe',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Account Number: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '8210041007',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Branch: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Kegalle',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Amount: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Rs. $amount',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(15),
                  ),
                  Container(
                    // padding: EdgeInsets.all(getProportionateScreenHeight(10)),
                    width: infinity.toDouble(),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(7.5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Bank: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Sampath Bank',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Account Name: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'W.M.M.S. Welipitiya',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Account Number: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '106454973552',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Branch: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Kegalle',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Amount: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Rs. $amount',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),
                  DefaultButton(
                    text: 'Ok',
                    press: () => {
                      Navigator.of(context).pop(),
                    },
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),

                  // NoAccountText()
                ]),
          ),
        ),
      ),
    );
  }
}
