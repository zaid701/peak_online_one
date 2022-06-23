// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/morepages.dart/knowledgeinfo.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';

class knowledgebased extends StatefulWidget {
  const knowledgebased({Key? key}) : super(key: key);

  @override
  State<knowledgebased> createState() => _knowledgebasedState();
}

class _knowledgebasedState extends State<knowledgebased> {
  bool s = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text("Knowledge Bases"),
        backgroundColor: Color(0xff95BB65),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Text(
                  "View our support articles for help with your services, we answer a combination of common queries to more complex scenarios that you might encounter.",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              FaIcon(
                FontAwesomeIcons.search,
                color: Colors.grey,
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text("Categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          ),
          Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Color(0xFFF7F9FC),
                  borderRadius: BorderRadius.circular(10)),
              child: RoundedExpansionTile(
                trailing: FaIcon(FontAwesomeIcons.angleDown),
                title: Text("Email Hosting",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                children: [
                  expansionrow("Outlook"),
                  Divider(),
                  expansionrow("Webmail"),
                  Divider(),
                  expansionrow("Email Accounts"),
                  SizedBox(
                    height: 7,
                  )
                ],
              )),
          Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Color(0xFFF7F9FC),
                  borderRadius: BorderRadius.circular(10)),
              child: RoundedExpansionTile(
                trailing: FaIcon(FontAwesomeIcons.angleDown),
                title: Text("Domain Names",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                children: [
                  expansionrow(".co.uk"),
                  Divider(),
                  expansionrow(".com"),
                  Divider(),
                  expansionrow(".uk"),
                  SizedBox(
                    height: 7,
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget expansionrow(String title) => InkWell(
        onTap: () =>
            pushNewScreen(context, screen: knowledgeinfo(), withNavBar: true),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 14),
              ),
              Spacer(),
              FaIcon(
                FontAwesomeIcons.angleRight,
                size: 20,
                color: Colors.grey,
              ),
              SizedBox(
                width: 30,
              )
            ],
          ),
        ),
      );
}
