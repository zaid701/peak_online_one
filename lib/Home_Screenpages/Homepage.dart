// ignore_for_file: prefer_const_constructors

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/Home_Screenpages/Chat_tab.dart';
import 'package:peak_online_one/Quotes/quotespage.dart';

import 'package:peak_online_one/more/more.dart';
import 'package:peak_online_one/project/projectpage.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../tickets/tickets.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Chat_page(),
      tickets(),
      projectpage(),
      quotespage(),
      morepage(),
    ];
    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            title: ("Chat"),
            activeColorPrimary: CupertinoColors.activeGreen,
            inactiveColorPrimary: CupertinoColors.black),
        PersistentBottomNavBarItem(
            icon: Icon(CupertinoIcons.headphones),
            title: ("Tickets"),
            activeColorPrimary: CupertinoColors.activeGreen,
            inactiveColorPrimary: CupertinoColors.black),
        PersistentBottomNavBarItem(
            icon: Icon(CupertinoIcons.share_up),
            title: ("Project"),
            activeColorPrimary: CupertinoColors.activeGreen,
            inactiveColorPrimary: CupertinoColors.black),
        PersistentBottomNavBarItem(
            icon: Icon(CupertinoIcons.quote_bubble),
            title: ("Qoutes"),
            activeColorPrimary: CupertinoColors.activeGreen,
            inactiveColorPrimary: CupertinoColors.black),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.bars),
          title: ("More"),
          activeColorPrimary: CupertinoColors.activeGreen,
          inactiveColorPrimary: CupertinoColors.black,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: pages,
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style9, // Choose the nav bar style with this property.
    );
  }
}

Widget gred(FaIcon ic) {
  return ShaderMask(
    shaderCallback: (bounds) => ui.Gradient.linear(
      Offset(20, 20),
      Offset(0, 20),
      [Colors.greenAccent, Colors.blueAccent],
    ),
    child: ic,
  );
}
