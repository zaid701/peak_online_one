// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/more/notificationdetail.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class notification extends StatefulWidget {
  final PageController pg;
  const notification({Key? key, required this.pg}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ticket Notifications",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xff666666)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "View your past email notifications",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff666666)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Icon(
                Icons.search,
                size: 25,
              ))
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
                row22(),
                Divider(),
                row22(),
                Divider(),
                row22(),
                Divider(),
                row22(),
                Divider(),
                row22(),
                Divider(),
                row22(),
                Divider(),
                row22(),
                Divider(),
                row22(),
                Divider(),
                row22(),
                Divider(),
                row22(),
                Divider(),
                row22(),
                Divider(),
                row22(),
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
    );
  }

  Widget row22() => InkWell(
        onTap: () => pushNewScreen(context,
            screen: notificationdetail(), withNavBar: true),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Your Ticket has closed",
                style: TextStyle(color: Color(0xff666666)),
              ),
              Spacer(),
              Text(
                "31-01-2022",
                style: TextStyle(color: Colors.grey[500]),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.grey[600],
              )
            ],
          ),
        ),
      );
}
