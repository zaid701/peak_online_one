// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/Quotes/createquotes.dart';
import 'package:peak_online_one/Quotes/editquote.dart';
import 'package:peak_online_one/Quotes/quotebyadmin.dart';
import 'package:peak_online_one/Quotes/quotehistory.dart';
import 'package:peak_online_one/main.dart';
import 'package:peak_online_one/morepages.dart/notification.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class quotespage extends StatefulWidget {
  const quotespage({Key? key}) : super(key: key);

  @override
  State<quotespage> createState() => _quotespageState();
}

class _quotespageState extends State<quotespage> {
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
                width: 10,
              ),
              Text(
                "Service Quotes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                    screen: quotehistory(), withNavBar: true),
                child: CircleAvatar(
                  child: FaIcon(
                    FontAwesomeIcons.history,
                    size: 15,
                  ),
                  radius: 12,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () => pushNewScreen(context,
                    screen: createquote(), withNavBar: true),
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: FaIcon(
                    FontAwesomeIcons.plus,
                    size: 15,
                  ),
                  radius: 12,
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                color: Color(0xFFF7F9FC),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Quoterow(),
                Divider(),
                Quoterow(),
                Divider(),
                Quoterow()
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

  Widget Quoterow() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("Digital Marketing",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Spacer(),
              InkWell(
                onTap: () => pushNewScreen(context,
                    screen: editquote(), withNavBar: true),
                child: FaIcon(
                  FontAwesomeIcons.edit,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () => pushNewScreen(context,
                    screen: quotebyadmin(), withNavBar: true),
                child: Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                      gradient: colorssl(),
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                      child: FittedBox(
                          child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text("Qoute"),
                  ))),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text("Service Type: Pay Per Click"),
          SizedBox(
            height: 5,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("Time Frame:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              Text("18-03-2022", style: TextStyle(fontSize: 12))
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text("Requierments:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
          SizedBox(
            height: 5,
          ),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
              style: TextStyle(fontSize: 12)),
          SizedBox(
            height: 10,
          )
        ],
      );
}
