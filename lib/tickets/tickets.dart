// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/tickets/Ceateticket.dart';
import 'package:peak_online_one/tickets/ticketchat.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class tickets extends StatefulWidget {
  const tickets({Key? key}) : super(key: key);

  @override
  State<tickets> createState() => _ticketsState();
}

class _ticketsState extends State<tickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        centerTitle: true,
        title: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: SvgPicture.asset(
            "asset/Group.svg",
            height: 45,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.info_outline_rounded),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFF7F9FC),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text("Open"),
                        Text(
                          "10",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFF7F9FC),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text("In Progress"),
                        Text(
                          "10",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFF7F9FC),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text("Closed"),
                        Text(
                          "10",
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Ticket List",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.search,
                ),
                Spacer(),
                InkWell(
                  onTap: () => pushNewScreen(context,
                      screen: createticket(), withNavBar: false),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      CircleAvatar(
                        child: FaIcon(
                          FontAwesomeIcons.plus,
                          size: 15,
                        ),
                        radius: 12,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Create New Ticket"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Color(0xFFF7F9FC),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  ticketrow("Open", context),
                  Divider(),
                  ticketrow("Inprogress", context),
                  Divider(),
                  ticketrow("Open", context),
                  Divider(),
                  ticketrow("Closed", context),
                  Divider(),
                  ticketrow("Inprogress", context),
                  Divider(),
                  ticketrow("Inprogress", context),
                  Divider(),
                  ticketrow("Open", context),
                  Divider(),
                  ticketrow("Closed", context),
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
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.angleRight)),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

Widget ticketrow(String title, BuildContext context) {
  Color c;
  String task;
  if (title == "Open") {
    c = Color(0xffE56767);
    task = "Awaiting staff reply";
  } else if (title == "Inprogress") {
    c = Color(0xff67CFE5);
    task = "Awaiting your reply";
  } else {
    c = Color(0xff95BB65);
    task = "Completed";
  }

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: InkWell(
      onTap: () =>
          pushNewScreen(context, screen: tickectchat(), withNavBar: false),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("This is going to be the title of this section part..",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Unable to login to email or website",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 14)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(task,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: task == "Awaiting your reply"
                                    ? Color(0xff75D3EB)
                                    : Colors.black)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                        color: c, borderRadius: BorderRadius.circular(7)),
                    child: Center(
                        child: FittedBox(
                            child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text(title),
                    ))),
                  ),
                ],
              ),
            ],
          )),
          Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: Colors.grey,
          ),
        ],
      ),
    ),
  );
}
