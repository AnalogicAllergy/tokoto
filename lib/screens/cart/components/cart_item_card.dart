import 'package:flutter/material.dart';
import 'package:tokoto/model/cart.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key key,
    @required this.cart,
  }) : super(key: key);
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: getProportionateScreenWidth(88),
            child: AspectRatio(
                aspectRatio: 0.88,
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(cart.product.images[0]),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xfff5f6f9),
                    )))),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.description,
              style: TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text.rich(
              TextSpan(
                  text: "\$${cart.product.price}",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: kPrimaryColor),
                  children: [
                    TextSpan(
                        text: " x${cart.numberOfItems}",
                        style: TextStyle(color: kTextColor))
                  ]),
            )
          ],
        )
      ],
    );
  }
}
