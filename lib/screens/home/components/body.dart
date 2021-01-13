import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'categories.dart';
import 'categories_card.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_products_card.dart';
import 'popular_products_carousel.dart';
import 'row_special_section.dart';
import 'specials_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          HomeHeader(),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          DiscountBanner(),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Categories(),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          RowSpecialSection(
            description: "Special for you",
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          SpecialsCarousel(),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          RowSpecialSection(
            description: "Popular Products",
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          PopularProductsCarousel(),
        ],
      ),
    ));
  }
}
