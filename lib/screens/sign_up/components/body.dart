import 'package:flutter/material.dart';
import 'package:tokoto/components/social_card.dart';
import 'package:tokoto/screens/sign_up/components/sign_up_form.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

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
              Text("Register Account", style: headingStyle),
              Text(
                "Complete with your detais or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              SignUpForm(),
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
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                "By continuing you confirm that you agree \nwit our Terms and Conditions",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
