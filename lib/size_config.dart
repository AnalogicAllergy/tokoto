import 'package:flutter/material.dart';

const LAYOUT_HEIGHT = 812; //design HEIGHT
const LAYOUT_WIDTH = 375; //design WIDTH

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double intendedHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (intendedHeight / LAYOUT_HEIGHT) * screenHeight;
}

double getProportionateScreenWidth(double intendedWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (intendedWidth / LAYOUT_WIDTH) * screenWidth;
}
