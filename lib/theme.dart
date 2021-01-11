import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: kTextColor),
      gapPadding: 10);
  return InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder);
}

TextTheme textTheme() {
  return TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor));
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      elevation: 0,
      centerTitle: true,
      color: Colors.white,
      brightness: Brightness.light,
      textTheme: TextTheme(
          headline6: TextStyle(color: Color(0xff8b8b8b), fontSize: 18)),
      iconTheme: IconThemeData(
        color: Colors.black,
      ));
}
