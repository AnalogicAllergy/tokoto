import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_counter_button.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchField(),
          IconCounterButton(
              imagePath: 'assets/icons/Cart Icon.svg', press: () {}),
          IconCounterButton(
              imagePath: 'assets/icons/Bell.svg',
              itemCount: 5,
              press: () {
                debugPrint("Pressed on callback");
              }),
        ],
      ),
    );
  }
}
