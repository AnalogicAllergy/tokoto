import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tokoto/components/default_button.dart';
import 'package:tokoto/components/rounded_icon_button.dart';
import 'package:tokoto/model/cart.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOurCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        title: Column(
          children: [
            Text(
              "Your cart",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "${demoCart.length} items",
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
        leading: RoundedIconButton(
          icon: Icons.arrow_back_ios,
          press: () => Navigator.pop(context),
        ));
  }
}

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(15),
          horizontal: getProportionateScreenWidth(30)),
      //height: getProportionateScreenHeight(174),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xffDADADA).withOpacity(0.15))
          ]),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    height: getProportionateScreenWidth(40),
                    width: getProportionateScreenWidth(40),
                    child: SvgPicture.asset('assets/icons/receipt.svg'),
                    decoration: BoxDecoration(
                        color: Color(0xfff5f6f9),
                        borderRadius: BorderRadius.circular(10))),
                Spacer(),
                Text("Add voucher code", style: TextStyle(color: kTextColor)),
                const SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward_ios, size: 12, color: kTextColor),
                SizedBox(height: getProportionateScreenHeight(20)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(text: "Total \n", children: [
                  TextSpan(
                      text: "\$331.59",
                      style: TextStyle(fontSize: 16, color: Colors.black))
                ])),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(text: "Check out", onPressed: () {}),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
