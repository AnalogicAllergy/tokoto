import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'popular_products_card.dart';

class PopularProductsCarousel extends StatelessWidget {
  List<Map<String, String>> items = [
    {
      "description": "Wireless Controller for PS4",
      "imagePath": "assets/images/ps4_console_white_1.png",
      "price": "64.99",
    },
    {
      "description": "Nike Sport Shorts",
      "imagePath": "assets/images/Image Popular Product 2.png",
      "price": "112.90",
    },
    {
      "description": "Gloves",
      "imagePath": "assets/images/glap.png",
      "price": "22.95",
    },
    {
      "description": "Helmet",
      "imagePath": "assets/images/Image Popular Product 3.png",
      "price": "59.90",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                items.length,
                (index) => PopularProductsCard(
                      description: items[index]["description"],
                      imagePath: items[index]["imagePath"],
                      price: items[index]["price"],
                    )),
          ),
        ),
      ),
    );
  }
}
