// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class knowledgeinfo extends StatefulWidget {
  const knowledgeinfo({Key? key}) : super(key: key);

  @override
  State<knowledgeinfo> createState() => _knowledgeinfoState();
}

class _knowledgeinfoState extends State<knowledgeinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Knowledge Bases"),
        backgroundColor: Color(0xff95BB65),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Color(0xFFF7F9FC),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("This is the heading of the selected category",
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w700)),
                SizedBox(
                  height: 15,
                ),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,\n\nRemaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
