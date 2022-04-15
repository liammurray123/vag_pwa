import 'package:flutter/material.dart';
import 'package:vag_pwa/theme/colors.dart';

class CustomTheme {
  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: CustomColors.orange,
        backgroundColor: CustomColors.black,
        scaffoldBackgroundColor: CustomColors.black,
        fontFamily: 'Rubik',
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: CustomColors.orange,
        ));
  }
}
