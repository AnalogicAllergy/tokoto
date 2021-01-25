import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(right: 2),
        height: getProportionateScreenWidth(40),
        width: getProportionateScreenWidth(40),
        child: DecoratedBox(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
                border: Border.all(
                    color: isSelected ? kPrimaryColor : Colors.transparent))),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: isSelected ? kPrimaryColor : Colors.transparent)));
  }
}
