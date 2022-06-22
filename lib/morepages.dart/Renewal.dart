// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class renewall extends StatefulWidget {
  const renewall({Key? key}) : super(key: key);

  @override
  State<renewall> createState() => _renewallState();
}

class _renewallState extends State<renewall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "Manage Renewals",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text("An overview of your upcoming service renewals."),
          Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFF7F9FC)),
              child: Column(
                children: [
                  InkWell(     
                    
                    child: roww2("Hosting", "Next Due Date : 28-8-2022")),
                  Divider(),
                  roww2("Domain Name", "Next Due Date : 28-8-2022"),
                  Divider(),
                  roww2("Updating Time",
                      "Next Due Date : 28-8-2022\nTime Reminding : 12 Hours"),
                ],
              )),
          SizedBox(
            height: 10,
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
          )
        ],
      ),
    );
  }
}

Widget roww2(String head, String sub) => Padding(
      padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      head,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "HK\$120.00",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      Text(sub),
                      Spacer(),
                      Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(7)),
                        child: Center(child: Text("Active")),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(7)),
                        child: Center(child: Text("Cancel")),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          IconButton(
              onPressed: () {}, icon: FaIcon(FontAwesomeIcons.angleRight)),
        ],
      ),
    );
