import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../main.dart';

class projectmsgarea extends StatefulWidget {
  const projectmsgarea({Key? key}) : super(key: key);

  @override
  State<projectmsgarea> createState() => _projectmsgareaState();
}

class _projectmsgareaState extends State<projectmsgarea> {
  List<String> str = [
    "qui est esse",
    "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "ea molestias quasi exercitationem repellat qui ipsa sit aut",
    "eum et est occaecati",
    "dolorem eum magni eos aperiam quia",
    "dolorem eum magni eos aperiam quia",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: str.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 10),
              child: taskchats(index, str[index]),
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
                      onPressed: () {}, icon: FaIcon(FontAwesomeIcons.image)),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: "Type A Massege..",
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

Widget taskchats(int i, String msg) {
  return i % 2 == 0
      ? Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: Colors.grey[200],
                ),
                child: Text(msg),
              ),
              Text(
                "12:00 PM",
                style: TextStyle(fontSize: 10),
              )
            ],
          ))
      : Align(
          alignment: Alignment.centerRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  gradient: colorssl(),
                ),
                child: Text(msg),
              ),
              Text(
                "12:00 PM",
                style: TextStyle(fontSize: 10),
              )
            ],
          ));
}
