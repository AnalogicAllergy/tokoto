import 'package:flutter/material.dart';
import 'package:tokoto/constants.dart';

import '../../../size_config.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            Text("Complete Profile", style: headingStyle),
            Text(
              "Complete your detais or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            CompleteProfileForm(),
          ],
        ),
      ),
    );
  }
}
