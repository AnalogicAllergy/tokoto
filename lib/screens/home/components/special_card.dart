import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialCard extends StatelessWidget {
  const SpecialCard({
    Key key,
    this.imagePath,
    this.section,
    this.brandCount,
  }) : super(key: key);
  final String imagePath;
  final String section;
  final String brandCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getProportionateScreenWidth(14)),
      child: SizedBox(
        height: getProportionateScreenHeight(100),
        width: SizeConfig.screenWidth * 0.6,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(imagePath),
                Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff343434).withOpacity(0.4),
                            Color(0xff343434).withOpacity(0.15),
                          ]),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20),
                          vertical: getProportionateScreenHeight(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            section,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: getProportionateScreenWidth(22)),
                          ),
                          Text("$brandCount Brands",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: getProportionateScreenWidth(14)))
                        ],
                      ),
                    )),
              ],
            )),
      ),
    );
  }
}
