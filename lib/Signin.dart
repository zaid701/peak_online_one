// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_build_context_synchronously, prefer_const_declarations, non_constant_identifier_names
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:peak_online_one/main.dart';
import 'package:peak_online_one/model/header.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    final String token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiNDY2MjMwYzNjMDBmMTU3OTUyMjQ5MTJkMGMwYTBmZWI0NmE4MmRiZmI2YmIyNzM4ZDJmYWM3NzJlNWZjYzdjZWRjMzUyODAxZTg2MmNmYTQiLCJpYXQiOjE2NTYzMDU5MzUuMTAyMDEyLCJuYmYiOjE2NTYzMDU5MzUuMTAyMDE4LCJleHAiOjE2ODc4NDE5MzUuMDk1MzI0LCJzdWIiOiIxNSIsInNjb3BlcyI6W119.hD_-J_Szkf-dxFyPgmqZtvKTpFD4ydRKAFqnoRbR0zuPQcCsaXGu7RDPR0Wzo6_zKlis-Wy9A_CUbJNvk-Gu_e2i4RBsS1IYC2gpFyrhISISuUnlGAeWkvrdZyyEfZ0qs8_YjSrn6zn-ePpPaonEVNEfakGz42yL2kGLl_9dDruOyGe-EZEMNaldyKeMdHVzR4_Y69h3RDf6ap1RBXjH72gUDmy5pBrOq2k_vCrjvu0KOagp4WNE9y6fjcxOBitIGpLuU6OV4DtgRsaWsYO6Iydzq0oKxb98D4rPSKpNIOLFaUNTNtLttlchxODfviAQ72KyPgIbP8jPblRStrNW4gOKbbfeI7vTFwAMTxtBXAUj9NwZ5r3pcdnQBnJpQTwwQei9mPhdvGW2osatzhtc_e_AhNHGMj08kdE0CzMIDcpS4K-H-DWT_AZRXW7aB6-Xi7fP2jAfL9MoM3P_GcDO69-3hs58vxXbpXbkLCZ_8JCDstWQdYAnR6BzcKXwKCO73nO0OxhYuXNrw6YTLi0osJy2hE5pbB7yNwsbVCn6qR2-3F42H8QJUzNmPYKpI5KnhOAAlDRkppjZnaRgBiYC54X2amlipLn_rtLksA0tQpJjwI10xhDaFOIc-EWacLBOH49aBlBzh3BAPQIFNxsXSM-hTALwq51LCy62fYPcJD4";
    Uri url = Uri.parse("http://44.234.205.222/peakonline/api/login");

    String email = "";
    String pass = "";

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
                    fit: BoxFit.fill,
                    child: SvgPicture.asset("asset/Rect.svg")),
              ),
              CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.15,
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
                  onChanged: (value) => setState(() {
                        email = value;
                      }),
                  decoration: InputDecoration(label: Text("Username"))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                  onChanged: (value) => setState(() {
                        pass = value;
                      }),
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
                  onTap: () {
                    check(email, pass, url, token);
                  },
                ))
          ],
        ),
      ),
    );
  }

  addshred() async {
    final pref = await SharedPreferences.getInstance();
    pref.setString("signed", "true");
    Fluttertoast.showToast(msg: "inserted");
  }

  check(String email, String pass, Uri url, String token) async {
    final Response = await Client().post(url,
        headers: headerWithToken(token: token),
        body: jsonEncode(<String, String>{'email': email, 'password': pass}));
    if (Response.statusCode >= 200 && Response.statusCode <= 300) {
      addshred();
      Navigator.popAndPushNamed(context, "home");
    } else {
      Fluttertoast.showToast(msg: "Feild");
    }
  }
}
