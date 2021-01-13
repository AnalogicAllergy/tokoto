import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

enum _SelectedTab { home, favourites, chat, profile }

class _BottomNavBarState extends State<BottomNavBar> {
  var _selectedTab = _SelectedTab.home;

  void handleChange(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: kTextColor.withOpacity(0.1)),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )),
      child: SalomonBottomBar(
        //TODO - fix onChangeSelect color da bottom tab

        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: handleChange,
        selectedItemColor: kPrimaryColor,
        items: [
          SalomonBottomBarItem(
              icon: SvgPicture.asset('assets/icons/Shop Icon.svg'),
              title: Text("")),
          SalomonBottomBarItem(
              icon: SvgPicture.asset('assets/icons/Heart Icon.svg'),
              title: Text("")),
          SalomonBottomBarItem(
              icon: SvgPicture.asset('assets/icons/Chat bubble Icon.svg'),
              title: Text("")),
          SalomonBottomBarItem(
              icon: SvgPicture.asset('assets/icons/User Icon.svg'),
              title: Text("")),
        ],
      ),
    );
  }
}
