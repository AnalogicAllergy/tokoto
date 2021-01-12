import 'package:flutter/material.dart';
import 'package:tokoto/components/default_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text("OTP Verification", style: headingStyle),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "We sent your code to +556198157***",
                    textAlign: TextAlign.center,
                  ),
                  TweenAnimationBuilder(
                      tween: Tween(begin: 30.0, end: 0),
                      duration: Duration(seconds: 30),
                      builder: (context, value, child) => Text(
                            "00:${value.toInt()}",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold),
                          ))
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.16),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.16),
              DefaultButton(text: "Continue", onPressed: () {}),
              SizedBox(height: SizeConfig.screenHeight * 0.16),
              Text(
                "Resend OTP code",
                style: TextStyle(decoration: TextDecoration.underline),
              )
            ],
          ),
        ),
      ),
    );
  }
}
