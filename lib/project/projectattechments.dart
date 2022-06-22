// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../main.dart';

class projectattechment extends StatefulWidget {
  const projectattechment({Key? key}) : super(key: key);

  @override
  State<projectattechment> createState() => _projectattechmentState();
}

class _projectattechmentState extends State<projectattechment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "Attachments List",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.search,
                size: 25,
              ),
              Spacer(),
              Container(
                height: 17,
                width: 17,
                decoration: BoxDecoration(
                  gradient: colorssl(),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Center(
                  child: FittedBox(child: Icon(Icons.add)),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Add File",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
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
                attechmentrow(),
                Divider(),
                attechmentrow(),
                Divider(),
                attechmentrow(),
                Divider(),
                attechmentrow(),
                Divider(),
                attechmentrow(),
                Divider(),
                attechmentrow(),
                Divider(),
                attechmentrow(),
                Divider(),
                attechmentrow(),
                Divider(),
                attechmentrow(),
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

  Widget attechmentrow() => Row(
        children: [
          SizedBox(
            width: 7,
          ),
          Icon(
            Icons.attachment_outlined,
            size: 18,
            color: Colors.grey[600],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Attachment : sdgf",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
              Text("File name",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11)),
            ],
          ),
          Spacer(),
          Icon(
            Icons.cloud_download_rounded,
            size: 20,
            color: Colors.grey[600],
          ),
          SizedBox(
            width: 7,
          ),
        ],
      );
}
