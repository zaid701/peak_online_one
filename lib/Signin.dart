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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(alignment: Alignment.bottomCenter, children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.30,
                child: FittedBox(
                    fit: BoxFit.fill, child: SvgPicture.asset("asset/Rect.svg")
                    // Image.asset(
                    //"asset/Rectangl.png",
                    // fit: BoxFit.fill,
                    // ),
                    ),
              ),
              CircleAvatar(
                maxRadius: MediaQuery.of(context).size.width * 0.15,
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: SvgPicture.asset(
                      "asset/Group.svg",
                    ),
                  ),
                ),
              )
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "Support",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightGreen[300], fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                  decoration: InputDecoration(label: Text("Username"))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                  decoration: InputDecoration(label: Text("Password"))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 20),
              child: Align(
                  child: Text("Forgot Password ?"),
                  alignment: Alignment.centerRight),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Container(
                margin: const EdgeInsets.all(30.0),
                height: MediaQuery.of(context).size.height * 0.075,
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: BoxDecoration(
                    gradient: colorssl(),
                    borderRadius: BorderRadius.circular(60)),
                child: InkWell(
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => Home_Page()))
                  },
                ))
          ],
        ),
      ),
    );
  }
}
