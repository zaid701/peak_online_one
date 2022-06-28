// ignore_for_file: prefer_const_constructors, camel_case_types
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/main.dart';
import 'package:peak_online_one/project/editproject.dart';
import 'package:peak_online_one/project/projectaskpage.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class projectpage extends StatefulWidget {
  final PersistentTabController controller;
  const projectpage({Key? key, required this.controller}) : super(key: key);

  @override
  State<projectpage> createState() => _projectpageState();
}

class _projectpageState extends State<projectpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar1(context, widget.controller, "Projects", false),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 22),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Projects",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 23,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding:
                    EdgeInsets.only(left: 15, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: Color(0xFFF7F9FC),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    projectrow(),
                    Divider(),
                    projectrow(),
                    Divider(),
                    projectrow(),
                    Divider(),
                    projectrow()
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    // padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Color(0xff95BB65), width: 2)),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: FaIcon(
                          FontAwesomeIcons.angleLeft,
                          size: 22,
                          color: Color(0xff95BB65),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "1",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    // padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Color(0xff95BB65), width: 2)),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: FaIcon(
                          FontAwesomeIcons.angleRight,
                          size: 22,
                          color: Color(0xff95BB65),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          )),
    );
  }

  Widget projectrow() => InkWell(
        onTap: () =>
            pushNewScreen(context, screen: projectaskpage(), withNavBar: false),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables

                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Web Design And Apps",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                      Spacer(),
                      Text("Status:",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 12)),
                      Text(" Accept",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12)),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        // ignore: prefer_const_literals_to_create_immutables

                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Start Date: 04-03-2022",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Target Completion Date: 19-03-2022 ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12),
                          ),
                        ],
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () => pushNewScreen(context,
                            screen: editprojectdetails(), withNavBar: true),
                        child: Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                              gradient: colorssl(),
                              borderRadius: BorderRadius.circular(7)),
                          child: Center(
                              child: FittedBox(
                                  child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              "Edit",
                              style: TextStyle(color: Colors.white),
                            ),
                          ))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Colors.grey,
            ),
          ],
        ),
      );
}
