// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Home_Screenpages/perchat.dart';

class projecttask extends StatefulWidget {
  const projecttask({Key? key}) : super(key: key);

  @override
  State<projecttask> createState() => _projecttaskState();
}

class _projecttaskState extends State<projecttask> {
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFF7F9FC),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text("Task Name: Header",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Description:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 11)),
                      SizedBox(
                        width: 3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[800],
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
