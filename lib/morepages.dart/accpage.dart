// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class accpage extends StatefulWidget {
  final PageController pg;
  const accpage({Key? key, required PageController this.pg}) : super(key: key);

  @override
  State<accpage> createState() => _accpageState();
}

class _accpageState extends State<accpage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text("An overview of your Peak Online Support Account"),
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFFF7F9FC)),
          child: Column(
            children: [
              roww11("Your Details", "Name,Email,Address,Company Name,Phone"),
              Divider(),
              InkWell(
                  onTap: () => {},
                  child: roww11("Security", "Update Your Password")),
              Divider(),
              roww11("Prefrences", "Manage Your Time Zone & Date Formate"),
              Divider(),
              roww11("Email Notification", "View Your Notificationss"),
            ],
          ),
        ),
        OrientationBuilder(
          builder: (context, orientation) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 3 / 1.5,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 5, bottom: 10),
              children: [
                it(Icon(FaIcon(FontAwesomeIcons.calendar).icon), "Renewals", 1),
                it(Icon(FaIcon(FontAwesomeIcons.handshake).icon), "SLA", 4),
                it(Icon(FaIcon(FontAwesomeIcons.database).icon), "Data", 5),
                it(Icon(FaIcon(FontAwesomeIcons.peopleGroup).icon), "Group", 6),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget it(Icon i, String name, int i2) {
    return InkWell(
      onTap: () => widget.pg.jumpToPage(i2),
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 7, right: 7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 5,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                i,
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.green.shade900,
                  radius: 3,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("New"),
              ],
            ),
            Text(name)
          ],
        ),
      ),
    );
  }

  Widget roww11(String title, String sub) => Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(sub)
              ],
            ),
            Spacer(),
            IconButton(
                onPressed: () {}, icon: FaIcon(FontAwesomeIcons.angleRight))
          ],
        ),
      );
}
