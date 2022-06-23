// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peak_online_one/Home_Screenpages/perchat.dart';
import 'package:peak_online_one/main.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Chat_page extends StatefulWidget {
  const Chat_page({Key? key}) : super(key: key);

  @override
  State<Chat_page> createState() => _Chat_pageState();
}

class _Chat_pageState extends State<Chat_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff95BB65),
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
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.normal,
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  )
                ]),
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: InkWell(
              onTap: (() {
                pushNewScreen(
                  context,
                  screen: perchat(),
                  withNavBar: false, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              }),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          foregroundImage: Image.asset(
                            "asset/imgg.png",
                            fit: BoxFit.cover,
                          ).image,
                        ),
                        Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              gradient: colorssl(),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: FittedBox(child: Text("2")))
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "Trever Jones",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Text("04:46 pm")
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "xjhcvbhsdbvjsdhhsdhfsdfisljhiggbujkghcdziuuubu",
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
