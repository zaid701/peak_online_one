// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peak_online_one/Home_Screenpages/Homepage.dart';
import 'package:peak_online_one/main.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF95BB65),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(alignment: Alignment.bottomCenter, children: [
            SvgPicture.asset(
              "asset/Rect.svg",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            CircleAvatar(
              maxRadius: 60,
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                "asset/Group.svg",
              ),
            )
          ]),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Support",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightGreen[300], fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                TextField(decoration: InputDecoration(label: Text("Username"))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child:
                TextField(decoration: InputDecoration(label: Text("Password"))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 20),
            child: Align(
                child: Text("Forgot Password ?"),
                alignment: Alignment.centerRight),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              margin: const EdgeInsets.all(30.0),
              height: 60,
              width: 310,
              decoration: BoxDecoration(
                  gradient: colorssl(),
                  borderRadius: BorderRadius.circular(60)),
              child: InkWell(
                child: Center(
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => Home_Page()))
                },
              ))
        ],
      ),
    );
  }
}
