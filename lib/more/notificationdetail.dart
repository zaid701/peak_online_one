// ignore_for_file: prefer_const_constructors, camel_case_types
import 'package:flutter/material.dart';

class notificationdetail extends StatefulWidget {
  const notificationdetail({Key? key}) : super(key: key);

  @override
  State<notificationdetail> createState() => _notificationdetailState();
}

class _notificationdetailState extends State<notificationdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text("Notification Detail"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "Notification Detail",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFF7F9FC)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "New ticket has been created!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(),
                SizedBox(
                  height: 7,
                ),
                Text("Hi Muneeb,",
                    style: TextStyle(fontSize: 14, color: Colors.grey[700])),
                Text("New ticket has been created!",
                    style: TextStyle(fontSize: 14, color: Colors.grey[700])),
                SizedBox(
                  height: 15,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Ticket name:",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700)),
                    Text("gvsdcyuds",
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]))
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Brief description:",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700)),
                    Text("gvsdcyuds",
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Thank You",
                    style: TextStyle(fontSize: 14, color: Colors.grey[700])),
                Text("Peak Online Team",
                    style: TextStyle(fontSize: 14, color: Colors.grey[700])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
