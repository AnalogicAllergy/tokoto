import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.imagePath,
    @required this.text,
    @required this.press,
  }) : super(key: key);
  final String imagePath;
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                height: getProportionateScreenHeight(70),
                width: getProportionateScreenWidth(60),
                child: Center(child: SvgPicture.asset(imagePath)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kPrimaryLightColor),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(text, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
