// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/main.dart';

import '../Home_Screenpages/perchat.dart';

class tickectchat extends StatefulWidget {
  const tickectchat({Key? key}) : super(key: key);

  @override
  State<tickectchat> createState() => _tickectchatState();
}

class _tickectchatState extends State<tickectchat> {
  List<String> str = [
    "asa"
        "Need to Setup on S21",
    "No problem we can arrange a call",
    "Sure 10am tomorrow",
    "Sed ut perspiciatis un. Ist"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: appbar2(context, "Ticket"),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Help to Setup on Mobile Phone",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14)),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      height: 25,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Color(0xFF6C757D),
                          borderRadius: BorderRadius.circular(4)),
                      child: FittedBox(
                        child: Center(
                          child: Text(
                            "Close Ticket",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Text("Ticket Id: #43"),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                      color: Color(0xFFF7F9FC),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("Unable to login to email or website",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12)),
                          Spacer(),
                          Text("21-2-2020",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("Priority:"),
                          SizedBox(
                            width: 3,
                          ),
                          Text("Medium",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Status:"),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Color(0xffE56767),
                                borderRadius: BorderRadius.circular(7)),
                            child: Center(
                                child: FittedBox(
                                    child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Text("Open"),
                            ))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: str.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 10),
              child: chats(index, str[index]),
            ),
          )),
          Container(
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.paperclip)),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: "Ticket Comments",
                        hintStyle: TextStyle(color: Colors.black)),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.telegram,
                        size: 30,
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
