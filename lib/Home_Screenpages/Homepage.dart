// ignore_for_file: prefer_const_constructors

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/Home_Screenpages/Chat_tab.dart';
import 'package:peak_online_one/Quotes/quotespage.dart';
import 'package:peak_online_one/icongred.dart';
import 'package:peak_online_one/main.dart';

import 'package:peak_online_one/more/more.dart';
import 'package:peak_online_one/my_flutter_app_icons.dart';
import 'package:peak_online_one/project/projectpage.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../tickets/tickets.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  // ignore: prefer_final_fields
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
            icon: GradientIcon(MyFlutterApp.layer_1, colorssl()),
            title: ("Chat"),
            inactiveIcon: Icon(MyFlutterApp.layer_1),
            activeColorPrimary: CupertinoColors.black,
            inactiveColorPrimary: CupertinoColors.black),
        PersistentBottomNavBarItem(
            icon: GradientIcon(MyFlutterApp.vector, colorssl()),
            title: ("Tickets"),
            inactiveIcon: Icon(MyFlutterApp.vector),
            activeColorPrimary: CupertinoColors.black,
            inactiveColorPrimary: CupertinoColors.black),
        PersistentBottomNavBarItem(
            icon: GradientIcon(MyFlutterApp.vector__1_, colorssl()),
            title: ("Project"),
            inactiveIcon: Icon(MyFlutterApp.vector__1_),
            activeColorPrimary: CupertinoColors.black,
            inactiveColorPrimary: CupertinoColors.black),
        PersistentBottomNavBarItem(
            icon: GradientIcon(MyFlutterApp.vector__2_, colorssl()),
            title: ("Qoutes"),
            inactiveIcon: Icon(MyFlutterApp.vector__2_),
            activeColorPrimary: CupertinoColors.black,
            inactiveColorPrimary: CupertinoColors.black),
        PersistentBottomNavBarItem(
          icon: GradientIcon(MyFlutterApp.bars, colorssl()),
          title: ("More"),
          inactiveIcon: Icon(MyFlutterApp.bars),
          activeColorPrimary: CupertinoColors.black,
          inactiveColorPrimary: CupertinoColors.black,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      // ignore: prefer_const_literals_to_create_immutables
      screens: [
        Chat_page(),
        tickets(
          controller: _controller,
        ),
        projectpage(
          controller: _controller,
        ),
        quotespage(
          controller: _controller,
        ),
        morepage(
          controller: _controller,
        ),
      ],
      items: _navBarsItems(),
      navBarHeight: 60,
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
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
