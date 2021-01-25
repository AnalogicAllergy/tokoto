import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    @required this.iconPath,
    @required this.text,
    this.press,
  }) : super(key: key);
  final String iconPath;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.all(20),
        color: Color(0xfff5f6f9),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              width: 22,
              color: kPrimaryColor,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(text, style: Theme.of(context).textTheme.bodyText2),
            ),
            Icon(Icons.arrow_forward_ios, color: kTextColor)
          ],
        ),
      ),
    );
  }
}
