// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                    // ignore: prefer_const_constructors
                    Text(
                      "Groups",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        "Here you can link up with other members of the same company or organisations for tickets, quotes or ongoing projects."),
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
              roww11("Group Name", "Team Peak Online"),
              Divider(),
              roww11("Group Name", "Team Peak Online"),
              Divider(),
              roww11("Group Name", "Team Peak Online"),
              Divider(),
              roww11("Group Name", "Team Peak Onlinen"),
            ],
          ),
        )
      ],
    );
  }
}
