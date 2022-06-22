// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:peak_online_one/main.dart';

class groupdetail extends StatefulWidget {
  const groupdetail({Key? key}) : super(key: key);

  @override
  State<groupdetail> createState() => _groupdetailState();
}

class _groupdetailState extends State<groupdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text("Group"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Group Members",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Spacer(),
              InkWell(
                onTap: () => invitealertgroup(),
                child: Text(
                  "Add Members",
                  style: TextStyle(fontSize: 13),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              InkWell(onTap: () => invitealertgroup(), child: Icon(Icons.add)),
              SizedBox(
                width: 10,
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Title -",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              Text(
                " Team Peak Online",
                style: TextStyle(fontSize: 14),
              ),
              Spacer(),
              Text(
                "Edit Name",
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(
                width: 5,
              ),
              InkWell(child: Icon(Icons.edit_outlined)),
              SizedBox(
                width: 10,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFF7F9FC)),
            child: Column(
              children: [
                groupdetrow(),
                Divider(),
                groupdetrow(),
                Divider(),
                groupdetrow(),
                Divider(),
                groupdetrow(),
                Divider(),
                groupdetrow(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget groupdetrow() => Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "1 - Andrew",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              Text(
                "andrew@peakonline.com",
                style: TextStyle(fontSize: 14),
              ),
            ],
          )),
          InkWell(
            onTap: () => delalertgroup(),
            child: Container(
              height: 35,
              width: 30,
              decoration: BoxDecoration(
                  gradient: colorssl(), borderRadius: BorderRadius.circular(5)),
              child: Icon(Icons.delete),
            ),
          )
        ],
      );
  Future delalertgroup() => showDialog(
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
                    "Are you sure you want to remove Andrew from the group?",
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
                            child: Text("Cancel"),
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
                            child: Text("Confirm"),
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

  Future invitealertgroup() => showDialog(
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
                    "Invite",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Please enter email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
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
                            child: Text("Send"),
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
}
