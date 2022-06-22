// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/main.dart';
import 'package:peak_online_one/project/editproject.dart';
import 'package:peak_online_one/project/projectaskpage.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class projectpage extends StatefulWidget {
  const projectpage({Key? key}) : super(key: key);

  @override
  State<projectpage> createState() => _projectpageState();
}

class _projectpageState extends State<projectpage> {
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
        // ignore: prefer_const_literals_to_create_immutables
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
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "Projects",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Spacer(),
              Icon(
                Icons.search,
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
            padding: EdgeInsets.only(left: 15, right: 10, top: 5, bottom: 5),
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

  Widget projectrow() => InkWell(
    onTap: ()=> pushNewScreen(context, screen: projectaskpage(),withNavBar: false),
    child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
  
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text("Web Design And Apps",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Spacer(),
                      Text("Status:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                      Text(" Accept", style: TextStyle(fontSize: 12)),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
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
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Target Completion Date: 19-03-2022 ",
                            style: TextStyle(fontSize: 12),
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
                            child: Text("Edit"),
                          ))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
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
