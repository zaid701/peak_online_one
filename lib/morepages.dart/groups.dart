// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/more/groupdetail.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'accpage.dart';

class Groupspage extends StatefulWidget {
  const Groupspage({Key? key}) : super(key: key);

  @override
  State<Groupspage> createState() => _GroupspageState();
}

class _GroupspageState extends State<Groupspage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [                
                    Text(
                      "Groups",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff666666)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                        "Here you can link up with other members of the same company or organisations for tickets, quotes or ongoing projects.",
                         style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff666666)),),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Icon(
              Icons.search,
              size: 25,
            ))
          ],
        ),
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFFF7F9FC)),
          child: Column(
            children: [
              roww111("Group Name", "Team Peak Online"),
              Divider(),
              roww111("Group Name", "Team Peak Online"),
              Divider(),
              roww111("Group Name", "Team Peak Online"),
              Divider(),
              roww111("Group Name", "Team Peak Onlinen"),
            ],
          ),
        )
      ],
    );
  }

  Widget roww111(String title, String sub) => InkWell(
        onTap: () =>
            pushNewScreen(context, screen: groupdetail(), withNavBar: true),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xff444444)),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(sub, style: TextStyle(color: Color(0xff5A5A5E)))
                ],
              ),
              Spacer(),
              IconButton(
                  onPressed: () {}, icon: FaIcon(FontAwesomeIcons.angleRight))
            ],
          ),
        ),
      );
}
