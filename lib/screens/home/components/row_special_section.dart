import 'package:flutter/material.dart';

import '../../../size_config.dart';

class RowSpecialSection extends StatelessWidget {
  const RowSpecialSection({
    Key key,
    this.description,
  }) : super(key: key);
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(description,
            style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(20))),
        Text("See more",
            style: TextStyle(fontSize: getProportionateScreenWidth(12))),
      ]),
    );
  }
}
