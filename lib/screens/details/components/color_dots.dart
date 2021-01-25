import 'package:flutter/material.dart';
import 'package:tokoto/components/rounded_icon_button.dart';

import '../../../size_config.dart';
import 'color_dot.dart';
import 'top_rounded_container.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key key,
    @required this.colors,
    @required this.selectedColor,
  }) : super(key: key);

  final List<Color> colors;
  final int selectedColor;

  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  @override
  Widget build(BuildContext context) {
    return TopRoundedContainer(
        color: Color(0xfff6f7f9),
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Row(children: [
              ...List.generate(
                  widget.colors.length,
                  (index) => ColorDot(
                        color: widget.colors[index],
                        isSelected: widget.selectedColor == index,
                      )),
              Spacer(),
              RoundedIconButton(
                icon: Icons.remove,
                press: () {},
              ),
              SizedBox(
                width: 15,
              ),
              RoundedIconButton(
                icon: Icons.add,
                press: () {},
              ),
            ])));
  }
}
