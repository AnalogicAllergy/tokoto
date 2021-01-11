import 'package:flutter/material.dart';

import 'package:tokoto/components/no_account.dart';
import 'package:tokoto/components/social_card.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'sign_in_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text("Welcome back!", style: headingStyle),
                Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      svgIcon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocialCard(
                      svgIcon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SocialCard(
                      svgIcon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
