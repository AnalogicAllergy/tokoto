import 'package:flutter/material.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Spacer(),
      Text(
        "TOKOTO",
        style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            fontWeight: FontWeight.bold,
            color: kPrimaryColor),
      ),
      Text(
        text,
        textAlign: TextAlign.center,
      ),
      Spacer(
        flex: 2,
      ),
      Image.asset(image,
          width: getProportionateScreenWidth(235),
          height: getProportionateScreenHeight(265))
    ]);
  }
}
