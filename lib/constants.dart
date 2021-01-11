import 'package:flutter/material.dart';

import 'size_config.dart';

const kPrimaryColor = Color(0xffFF7643);
const kPrimaryLightColor = Color(0xffffecdf);
const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xffffa53e), Color(0xffff7643)]);
const kSecondaryColor = Color(0xff979797);
const kTextColor = Color(0xff757575);
const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: getProportionateScreenWidth(28),
    height: 1.5);

const String kEmailNullError = "Please enter your email";
const String kInvalidEmailError = "Please enter a valid email";
const String kPasswordNullError = "Please enter your password";
const String kShortPasswordError = "Password is too short";
const String kPasswordMatchError = "Passwords dont match";
final RegExp kEmailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
