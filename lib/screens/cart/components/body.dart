import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tokoto/model/cart.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'cart_item_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: ListView.builder(
          itemCount: demoCart.length,
          itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenWidth(10)),
                child: Dismissible(
                  onDismissed: (direction) {
                    setState(() {
                      demoCart.removeAt(index);
                    });
                  },
                  direction: DismissDirection.endToStart,
                  key: Key(demoCart[index].id.toString()),
                  background: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20)),
                      child: Row(
                        children: [
                          Spacer(),
                          SvgPicture.asset('assets/icons/Trash.svg'),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffffe6e6),
                          borderRadius: BorderRadius.circular(15))),
                  child: CartItemCard(
                    cart: demoCart[index],
                  ),
                ),
              )),
    );
  }
}
