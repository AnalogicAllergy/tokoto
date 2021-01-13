import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'categories_card.dart';

class Categories extends StatelessWidget {
  Categories({
    Key key,
  }) : super(key: key);
  final List<String> categories = [
    "Flash Deal",
    "Bill",
    "Game",
    "Daily Gift",
    "More"
  ];
  final List<String> images = [
    "assets/icons/Flash Icon.svg",
    "assets/icons/Bill Icon.svg",
    "assets/icons/Game Icon.svg",
    "assets/icons/Gift Icon.svg",
    "assets/icons/Discover.svg"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
            categories.length,
            (index) => CategoryCard(
                imagePath: images[index],
                text: categories[index],
                press: () {})),
      ),
    );
  }
}
