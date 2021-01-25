import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tokoto/components/default_button.dart';
import 'package:tokoto/components/rounded_icon_button.dart';
import 'package:tokoto/model/product.dart';
import 'package:tokoto/screens/cart/cart_screen.dart';
import 'package:tokoto/screens/details/components/product_description.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'color_dot.dart';
import 'color_dots.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;
  List<Color> colors = [
    Color(0xFFF6625E),
    Color(0xFF836DB8),
    Color(0xFFDECB9C),
    Colors.white,
  ];

  Body({
    Key key,
    this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int selectedColor = 2;
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: ProductDescription(
              product: product,
              pressOnSeeMore: () {},
            ),
          ),
          ColorDots(colors: colors, selectedColor: selectedColor),
          TopRoundedContainer(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.15,
                  right: SizeConfig.screenWidth * 0.15,
                  top: getProportionateScreenWidth(15),
                  bottom: getProportionateScreenWidth(40)),
              child: DefaultButton(
                  text: "Add to Cart",
                  onPressed: () {
                    Navigator.pushNamed(context, CartScreen.routeName);
                  }),
            ),
          )
        ],
      ),
    );
  }
}
