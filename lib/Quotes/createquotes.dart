// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:peak_online_one/main.dart';

class createquote extends StatefulWidget {
  const createquote({Key? key}) : super(key: key);

  @override
  State<createquote> createState() => _createquoteState();
}

class _createquoteState extends State<createquote> {
  String dropdownvalue = "Select issue Type";
  var items = ['Select issue Type', "as"];
  TextEditingController textarea = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar2(context, "Create New Quote"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Create New Quote",
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
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Service*",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
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
                    height: 10,
                  ),
                  Text(
                    "Service Type*",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
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
                    height: 10,
                  ),
                  Text(
                    "Requirements*",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: textarea,
                    keyboardType: TextInputType.multiline,
                    maxLines: 7,
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        hintText: "Please enter your requirements",
                        hintStyle: TextStyle(fontSize: 13),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Attach File",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.attach_file),
                        hintText: "Upload File",
                        hintStyle: TextStyle(fontSize: 13),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Time Frame*",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.calendar_month),
                        hintText: "DD---YYYY",
                        hintStyle: TextStyle(fontSize: 13),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        gradient: colorssl()),
                    child: Text(
                      "Submit Quote",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
