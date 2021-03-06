// ignore_for_file: prefer_const_constructors, camel_case_types
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../main.dart';

class renewall extends StatefulWidget {
  const renewall({Key? key}) : super(key: key);

  @override
  State<renewall> createState() => _renewallState();
}

class _renewallState extends State<renewall> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Manage Renewals",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff666666)),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "An overview of your upcoming service renewals.",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff666666)),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFF7F9FC)),
                child: Column(
                  children: [
                    InkWell(
                        child: roww2(
                            "Hosting", "Next Due Date : 28-8-2022", false)),
                    Divider(),
                    roww2("Domain Name", "Next Due Date : 28-8-2022", false),
                    Divider(),
                    roww2("Updating Time", "Next Due Date : 28-8-2022", true),
                  ],
                )),
            SizedBox(
              height: 10,
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
          ],
        ),
      ),
    );
  }

  Future showrenewal() => showDialog(
      context: context,
      builder: (context) => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 10,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.close),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Renewal Detail",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "Hosting",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 25,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Center(child: Text("Active")),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text("Next Due Date : 28-8-2022"),
                                  Spacer(),
                                  Text(
                                    "HK\$120.00",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () => canclerenewalalert(),
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                            gradient: colorssl(),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text("Cancel Renewal")),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ));

  Future canclerenewalalert() => showDialog(
      context: context,
      builder: (context) => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 10,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.close),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Are you sure you want to cancel renewal?",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text("Close"),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                              gradient: colorssl(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text("Cancel"),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ));

  Widget roww2(String head, String sub, bool a) => Padding(
        padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
        child: InkWell(
          onTap: () => showrenewal(),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          head,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff444444)),
                        ),
                        Spacer(),
                        Text(
                          "HK\$120.00",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Text(sub),
                          Spacer(),
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Color(0xff67CFE5),
                                borderRadius: BorderRadius.circular(7)),
                            child: Center(
                                child: Text(
                              "Active",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Color(0xffE56767),
                                borderRadius: BorderRadius.circular(7)),
                            child: Center(
                                child: Text("Cancel",
                                    style: TextStyle(color: Colors.white))),
                          ),
                        ],
                      ),
                    ),
                    a == true ? Text("Time Reminding : 12 Hours") : SizedBox(),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {}, icon: FaIcon(FontAwesomeIcons.angleRight)),
            ],
          ),
        ),
      );
}
