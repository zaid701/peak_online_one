// ignore_for_file: prefer_const_constructors, camel_case_types
import 'package:flutter/material.dart';
import 'package:peak_online_one/main.dart';

class securityy extends StatefulWidget {
  const securityy({Key? key}) : super(key: key);

  @override
  State<securityy> createState() => _securityyState();
}

class _securityyState extends State<securityy> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Security Details",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xff666666))),
            SizedBox(
              height: 6,
            ),
            Text(
                "We priorities security above everything else, below you can change your password. We recommend using a strong password that you change regularly.",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff666666))),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFF7F9FC)),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Current Password",
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        contentPadding: EdgeInsets.only(left: 28),
                        hintStyle: TextStyle(color: Color(0xffB7B7BD)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6CACE)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "New Password",
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        contentPadding: EdgeInsets.only(left: 28),
                        hintStyle: TextStyle(color: Color(0xffB7B7BD)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6CACE)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        contentPadding: EdgeInsets.only(left: 28),
                        hintStyle: TextStyle(color: Color(0xffB7B7BD)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6CACE)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        gradient: colorssl()),
                    child: Text(
                      "Confirm New Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
