// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(
                "We priorities security above everything else, below you can change your password. We recommend using a strong password that you change regularly."),
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
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Current Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Current Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey),
                    child: Center(
                        child: Text(
                      "Confirm New Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
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
