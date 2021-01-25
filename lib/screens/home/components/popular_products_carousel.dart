import 'package:flutter/material.dart';
import 'package:tokoto/model/product.dart';
import 'package:tokoto/screens/details/details_screen.dart';

import '../../../size_config.dart';
import 'popular_products_card.dart';

class PopularProductsCarousel extends StatelessWidget {
  List<Map<String, dynamic>> items = [
    {
      "description": "Wireless Controller for PS4",
      "imagePath": "assets/images/ps4_console_white_1.png",
      "price": "99.99",
      "rating": "4.8",
      "images": [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
    },
    {
      "description": "Nike Sport Shorts",
      "imagePath": "assets/images/Image Popular Product 2.png",
      "price": "112.90",
      "rating": "4.1",
      "images": [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
    },
    {
      "description": "Gloves",
      "imagePath": "assets/images/glap.png",
      "price": "22.95",
      "rating": "3.9",
      "images": [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
    },
    {
      "description": "Helmet",
      "imagePath": "assets/images/Image Popular Product 3.png",
      "price": "59.90",
      "rating": "4.5",
      "images": [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
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
                      product: Product.fromMap(items[index]),
                      press: () {
                        Navigator.pushNamed(context, DetailsScreen.routeName,
                            arguments: DetailsProductArguments(
                                product: Product.fromMap(items[index])));
                      },
                    )),
          ),
        ),
      ),
    );
  }
}
