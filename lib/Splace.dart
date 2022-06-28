import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:peak_online_one/Home_Screenpages/Homepage.dart';
import 'package:peak_online_one/Signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splace extends StatefulWidget {
  const splace({Key? key}) : super(key: key);

  @override
  State<splace> createState() => _splaceState();
}

class _splaceState extends State<splace> {
  late String a;
  @override
  void initState() {
    getdata();
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => a == "true"
            ? Navigator.popAndPushNamed(context, "home")
            : Navigator.popAndPushNamed(context, "abd"));
  }

  getdata() async {
    final pref = await SharedPreferences.getInstance();
    String? b = pref.getString("signed");
    this.a = b.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: FittedBox(
            fit: BoxFit.cover, child: SvgPicture.asset("asset/Splash.svg")),
      ),
    );
  }
}
