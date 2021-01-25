import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tokoto/components/rounded_icon_button.dart';
import 'package:tokoto/size_config.dart';

import '../../constants.dart';
import '../../enums.dart';
import 'components/body.dart';
import 'components/custom_bottom_navigator.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    // TODO when initial route is reconfigured, remove below
    // SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          leading: RoundedIconButton(
            icon: Icons.arrow_back_ios,
            press: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Body(),
        bottomNavigationBar: CustomBottomNavBar(
          selectedMenu: MenuState.profile,
        ));
  }
}
