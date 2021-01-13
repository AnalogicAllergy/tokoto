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
const kTestPurple = Color(0xff4a3298);
const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: getProportionateScreenWidth(28),
    height: 1.5);
final otpInputDecoration = InputDecoration(
    contentPadding:
        EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
    focusedBorder: outlineInputBorder(),
    border: outlineInputBorder(),
    enabledBorder: outlineInputBorder());

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: kTextColor));
}

const String kEmailNullError = "Please enter your email";
const String kInvalidEmailError = "Please enter a valid email";
const String kPasswordNullError = "Please enter your password";
const String kShortPasswordError = "Password is too short";
const String kPasswordMatchError = "Passwords dont match";
const String kNameTooShort = "Name is too short";
const String kNameNullError = "Name must be provided";
const String kPhoneNumberBadFormat = "Phone number is not in adequate format";
const String kPhoneNullError = "Phone number must be provided";
const String kAddressNullError = "Address must be provided";
final RegExp kEmailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
