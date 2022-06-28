// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class allnotification extends StatefulWidget {
  const allnotification({Key? key}) : super(key: key);

  @override
  State<allnotification> createState() => _allnotificationState();
}

class _allnotificationState extends State<allnotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Color(0xff95BB65),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "All Notifications",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Spacer(),
                Icon(
                  Icons.search,
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFF7F9FC)),
              child: Column(
                children: [
                  allnotificationrow(),
                  Divider(),
                  allnotificationrow(),
                  Divider(),
                  allnotificationrow(),
                  Divider(),
                  allnotificationrow(),
                  Divider(),
                  allnotificationrow(),
                  Divider(),
                  allnotificationrow(),
                  Divider(),
                  allnotificationrow(),
                  Divider(),
                  allnotificationrow(),
                  Divider(),
                  allnotificationrow(),
                  Divider(),
                  allnotificationrow(),
                  Divider(),
                  allnotificationrow(),
                  Divider(),
                  allnotificationrow(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  // padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff95BB65), width: 2)),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: FaIcon(
                        FontAwesomeIcons.angleLeft,
                        size: 22,
                        color: Color(0xff95BB65),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "1",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 35,
                  width: 35,
                  // padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff95BB65), width: 2)),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: FaIcon(
                        FontAwesomeIcons.angleRight,
                        size: 22,
                        color: Color(0xff95BB65),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget allnotificationrow() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              Icons.currency_pound_outlined,
              size: 15,
              color: Colors.grey[600],
            ),
            SizedBox(
              width: 5,
            ),
            Text("Your service quote has been revised"),
            Spacer(),
            Text(
              "1 day ago",
              style: TextStyle(color: Colors.grey[500]),
            ),
          ],
        ),
      );
}
