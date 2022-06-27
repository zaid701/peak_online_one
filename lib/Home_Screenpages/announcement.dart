// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/Home_Screenpages/announcementdetail.dart';
import 'package:peak_online_one/main.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class announmentpage extends StatefulWidget {
  const announmentpage({Key? key}) : super(key: key);

  @override
  State<announmentpage> createState() => _announmentpageState();
}

class _announmentpageState extends State<announmentpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: appbar2(context, "Announcements"),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "Announcements",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Spacer(),
              Icon(
                Icons.search,
                size: 25,
              ),
              SizedBox(
                width: 15,
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
                row22(Colors.red, "Unread"),
                Divider(),
                row22(Colors.green, "Read"),
                Divider(),
                row22(Colors.red, "Unread"),
                Divider(),
                row22(Colors.green, "Read"),
                Divider(),
                row22(Colors.red, "Unread"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {}, icon: FaIcon(FontAwesomeIcons.angleLeft)),
              Text("1"),
              IconButton(
                  onPressed: () {}, icon: FaIcon(FontAwesomeIcons.angleRight)),
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Widget row22(Color c, String title) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () =>
              pushNewScreen(context, screen: announdetail(), withNavBar: true),
          child: Row(
            children: [
              Text("Happy Christmas from Peak Online"),
              Spacer(),
              Container(
                height: 25,
                width: 60,
                decoration: BoxDecoration(
                    color: c, borderRadius: BorderRadius.circular(7)),
                child: Center(
                    child: FittedBox(
                        child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Text(title),
                ))),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.grey[600],
              )
            ],
          ),
        ),
      );
}
