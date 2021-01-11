import 'package:flutter/material.dart';
import 'package:tokoto/components/no_account.dart';
import 'package:tokoto/screens/sign_in/components/sign_in_form.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'forgot_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Please enter your email and we will send you a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              ForgotForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              NoAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
