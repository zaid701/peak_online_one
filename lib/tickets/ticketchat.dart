// ignore_for_file: prefer_const_constructors, camel_case_types, unused_local_variable
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/main.dart';
import 'package:peak_online_one/model/ticketmodel.dart';
import '../Home_Screenpages/perchat.dart';

class tickectchat extends StatefulWidget {
  final PaginateData ticketdata;
  const tickectchat({Key? key, required this.ticketdata}) : super(key: key);

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
    String priority = "High";
    int prio = widget.ticketdata.priorityId as int;
    if (prio == 1) {
      priority = "Low";
    } else if (prio == 2) {
      priority = "Medium";
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar2(context, "Ticket"),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      height: 25,
                      width: 80,
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
                Text("Ticket Id: #${widget.ticketdata.id}"),
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
                          Text(widget.ticketdata.categoryName.toString(),
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
                      icon: FaIcon(
                        FontAwesomeIcons.paperclip,
                        color: Color(0xff495057),
                      )),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF5F5F5),
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Ticket Comments",
                        hintStyle: TextStyle(color: Colors.black)),
                  )),
                  IconButton(
                    onPressed: () {},
                    icon: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) =>
                          colorssl().createShader(bounds),
                      child: SvgPicture.asset(
                        "asset/endchat.svg",
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
