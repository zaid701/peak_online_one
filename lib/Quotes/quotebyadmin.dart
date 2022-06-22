// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../main.dart';

class quotebyadmin extends StatefulWidget {
  const quotebyadmin({Key? key}) : super(key: key);

  @override
  State<quotebyadmin> createState() => _quotebyadminState();
}

class _quotebyadminState extends State<quotebyadmin> {
  String dropdownvalue = "Select Status";
  var items = ['Select Status', "as"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text("Quote By Admin"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text("Quote By Admin",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
                color: Color(0xFFF7F9FC),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Service: ",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14)),
                    Text("Graphic Design",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14)),
                    Spacer(),
                    Text("Price: 150.00",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 11)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Service Type: Logo Design and branding",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.grey[800])),
                SizedBox(
                  height: 10,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Time Frame:",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 13)),
                    Text("18-03-2022",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.grey[800])),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Details:",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 13)),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Colors.grey[800])),
                SizedBox(
                  height: 10,
                ),
                Text("Requierments:",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 13)),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Colors.grey[800])),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
                color: Color(0xFFF7F9FC),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Status*",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isExpanded: true,

                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: colorssl()),
                  child: Text(
                    "Save",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                )),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
