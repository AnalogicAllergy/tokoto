import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tokoto/components/default_button.dart';
import 'package:tokoto/screens/home/home_screen.dart';
import 'package:tokoto/screens/sign_in/sign_in_screen.dart';

import '../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            Image.asset('assets/images/success.png',
                height: SizeConfig.screenHeight * 0.4),
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            Text(
              "Login Success",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(30),
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            SizedBox(
              width: SizeConfig.screenWidth * 0.6,
              child: DefaultButton(
                  text: "Back to home",
                  onPressed: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  }),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
