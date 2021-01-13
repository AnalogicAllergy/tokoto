import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../constants.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: SizeConfig.screenHeight * 0.12,
        width: double.infinity,
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text("A Summer Surprise",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(12))),
              Text("Cashback 20%",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(24))),
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: kTestPurple, borderRadius: BorderRadius.circular(20)));
  }
}
