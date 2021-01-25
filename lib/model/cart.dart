import 'package:flutter/material.dart';

import 'package:tokoto/model/product.dart';

class Cart {
  final Product product;
  final int numberOfItems;
  final int id;

  Cart(
      {@required this.product,
      @required this.numberOfItems,
      @required this.id});
}

List<Cart> demoCart = [
  Cart(product: demoProducts[0], numberOfItems: 3, id: 1),
  Cart(product: demoProducts[1], numberOfItems: 1, id: 2),
  Cart(product: demoProducts[2], numberOfItems: 2, id: 3)
];

//demo data for out cart

List<Product> demoProducts = [
  Product(
    "assets/images/ps4_console_white_1.png",
    "Wireless Controller for PS4",
    "54.99",
    "4.6",
    [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
  ),
  Product(
    "assets/images/tshirt.png",
    "T-shirt from Designer label",
    "54.99",
    "4.6",
    [
      "assets/images/tshirt.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
  ),
  Product(
    "assets/images/shoes2.png",
    "Nike Airmax",
    "154.99",
    "4.3",
    [
      "assets/images/shoes2.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
  ),
];
