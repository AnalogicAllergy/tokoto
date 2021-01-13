import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconCounterButton extends StatelessWidget {
  const IconCounterButton({
    Key key,
    @required this.imagePath,
    this.itemCount = 0,
    @required this.press,
  }) : super(key: key);
  final String imagePath;
  final int itemCount;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(40),
      onTap: press,
      child: Stack(
        children: [
          Container(
            width: SizeConfig.screenWidth * 0.2,
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            child: Container(
                height: getProportionateScreenHeight(46),
                width: getProportionateScreenWidth(46),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Center(child: SvgPicture.asset(imagePath))),
          ),
          if (itemCount != 0)
            Positioned(
                right: 15,
                top: 10,
                child: Container(
                    child: Center(
                        child: Text("$itemCount",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: getProportionateScreenWidth(8)))),
                    height: getProportionateScreenHeight(16),
                    width: getProportionateScreenWidth(16),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.white))))
        ],
      ),
    );
  }
}
