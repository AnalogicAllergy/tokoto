import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'special_card.dart';

class SpecialsCarousel extends StatelessWidget {
  SpecialsCarousel({
    Key key,
  }) : super(key: key);

  List<Map<String, String>> items = [
    {
      "section": "Smartphone",
      "imagePath": "assets/images/Image Banner 2.png",
      "brandCount": "12",
    },
    {
      "section": "Fashion",
      "imagePath": "assets/images/Image Banner 3.png",
      "brandCount": "7",
    },
    {
      "section": "Boots",
      "imagePath": "assets/images/Image Banner 3.png",
      "brandCount": "32",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Container(
        height: getProportionateScreenHeight(100),
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                items.length,
                (index) => SpecialCard(
                      section: items[index]["section"],
                      imagePath: items[index]["imagePath"],
                      brandCount: items[index]["brandCount"],
                    )),
          ),
        ),
      ),
    );
  }
}
