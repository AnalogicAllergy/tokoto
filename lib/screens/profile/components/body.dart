import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_picture.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePicture(),
        SizedBox(height: 20),
        ProfileMenu(
          iconPath: "assets/icons/User Icon.svg",
          text: "My Account",
        ),
        ProfileMenu(
          iconPath: "assets/icons/Bell.svg",
          text: "Notifications",
        ),
        ProfileMenu(
          iconPath: "assets/icons/Settings.svg",
          text: "Settings",
        ),
        ProfileMenu(
          iconPath: "assets/icons/Question mark.svg",
          text: "Help Center",
        ),
        ProfileMenu(
          iconPath: "assets/icons/Log out.svg",
          text: "Logout",
        ),
      ],
    );
  }
}
