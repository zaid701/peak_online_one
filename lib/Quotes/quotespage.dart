// ignore_for_file: prefer_const_constructors, sort_child_properties_last, camel_case_types, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/Quotes/createquotes.dart';
import 'package:peak_online_one/Quotes/editquote.dart';
import 'package:peak_online_one/Quotes/quotebyadmin.dart';
import 'package:peak_online_one/Quotes/quotehistory.dart';
import 'package:peak_online_one/main.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class quotespage extends StatefulWidget {
  final PersistentTabController controller;
  const quotespage({Key? key, required this.controller}) : super(key: key);

  @override
  State<quotespage> createState() => _quotespageState();
}

class _quotespageState extends State<quotespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar1(context, widget.controller, "Quotes", false),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.search,
                  size: 20,
                ),
                Spacer(),
                InkWell(
                  onTap: () => pushNewScreen(context,
                      screen: quotehistory(), withNavBar: true),
                  child: CircleAvatar(
                    backgroundColor: Color(0xff95BB65),
                    child: FaIcon(
                      FontAwesomeIcons.history,
                      size: 16,
                      color: Colors.white,
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
                    backgroundColor: Color(0xff67CFE9),
                    child: FaIcon(
                      FontAwesomeIcons.plus,
                      size: 15,
                      color: Colors.white,
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
        ),
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
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xff444444))),
              Spacer(),
              InkWell(
                onTap: () => pushNewScreen(context,
                    screen: editquote(), withNavBar: true),
                child: FaIcon(
                  FontAwesomeIcons.edit,
                  color: Color(0xff67CFE9),
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
                              child: Text(
                                "Qoute",
                                style: TextStyle(color: Colors.white),
                              )))),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text("Service Type: Pay Per Click",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff5A5A5E))),
          SizedBox(
            height: 8,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("Time Frame:",
                  style: TextStyle(
                      color: Color(0xff444444),
                      fontWeight: FontWeight.w500,
                      fontSize: 12)),
              Text("18-03-2022",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Color(0xff444444),
                  ))
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text("Requierments:",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xff444444))),
          SizedBox(
            height: 8,
          ),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 10,
                  color: Color(0xff444444))),
          SizedBox(
            height: 16,
          )
        ],
      );
}
