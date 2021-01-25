import 'package:flutter/material.dart';
import 'package:tokoto/model/product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class PopularProductsCard extends StatelessWidget {
  const PopularProductsCard({
    Key key,
    @required this.product,
    @required this.press,
  }) : super(key: key);
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getProportionateScreenWidth(10)),
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: [
            Container(
                width: SizeConfig.screenWidth * 0.3,
                height: SizeConfig.screenHeight * 0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kSecondaryColor.withOpacity(0.1),
                    image: DecorationImage(
                        image: AssetImage(product.imagePath),
                        fit: BoxFit.scaleDown))),
            SizedBox(
              width: SizeConfig.screenWidth * 0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    product.description,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "\$${product.price}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kPrimaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
