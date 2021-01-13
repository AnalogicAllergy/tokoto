import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class PopularProductsCard extends StatelessWidget {
  const PopularProductsCard({
    Key key,
    this.imagePath,
    this.description,
    this.price,
  }) : super(key: key);
  final String imagePath;
  final String description;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getProportionateScreenWidth(10)),
      child: Column(
        children: [
          Container(
              width: SizeConfig.screenWidth * 0.3,
              height: SizeConfig.screenHeight * 0.15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kSecondaryColor.withOpacity(0.1),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.scaleDown))),
          SizedBox(
            width: SizeConfig.screenWidth * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  description,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "\$$price",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: kPrimaryColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
