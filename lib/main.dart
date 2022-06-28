// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:peak_online_one/Home_Screenpages/Homepage.dart';
import 'package:peak_online_one/Signin.dart';
import 'package:peak_online_one/Splace.dart';
import 'package:peak_online_one/more/allnotification.dart';
import 'package:peak_online_one/morepages.dart/knowledgbased.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: "Roboto"),
      debugShowCheckedModeBanner: false,
      routes: {
        'abd': ((context) => Signin()),
        'home': ((context) => Home_Page()),
      },
      home: splace(),
    );
  }
}

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

LinearGradient colorssl() => LinearGradient(
      // ignore: prefer_const_literals_to_create_immutables
      colors: [
        Color(0xff67CFE5),
        Color(0xff5BA400),
      ],
      // ignore: prefer_const_literals_to_create_immutables
      //tileMode: TileMode.decal,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
AppBar appbar1(BuildContext context, PersistentTabController controller,
        String title, bool avtar) =>
    AppBar(
      leadingWidth: MediaQuery.of(context).size.width * 0.5,
      leading: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          InkWell(
              onTap: () => controller.jumpToTab(0),
              child: Icon(Icons.arrow_back)),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.05),
          )
        ],
      ),
      centerTitle: avtar,
      backgroundColor: Color(0xff95BB65),
      title: avtar
          ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25,
              child: SvgPicture.asset(
                "asset/Group.svg",
                height: 45,
              ),
            )
          : null,
      // ignore: prefer_const_literals_to_create_immutables
      actions: [
        InkWell(
          onTap: () => pushNewScreen(context,
              screen: knowledgebased(), withNavBar: true),
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.info_outline_rounded),
          ),
        ),
        InkWell(
          onTap: () => pushNewScreen(context,
              screen: allnotification(), withNavBar: true),
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8),
            child: Icon(Icons.notifications),
          ),
        ),
      ],
    );

AppBar appbar2(BuildContext context, String title) => AppBar(
      backgroundColor: Color(0xff95BB65),
      //leadingWidth: MediaQuery.of(context).size.width * 0.1,
      leading: InkWell(
          onTap: () => Navigator.pop(context), child: Icon(Icons.arrow_back)),
      title: Text(title),
      // ignore: prefer_const_literals_to_create_immutables
      actions: [
        InkWell(
          onTap: () => pushNewScreen(context,
              screen: knowledgebased(), withNavBar: true),
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.info_outline_rounded),
          ),
        ),
        InkWell(
          onTap: () => pushNewScreen(context,
              screen: allnotification(), withNavBar: true),
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8),
            child: Icon(Icons.notifications),
          ),
        ),
      ],
    );
