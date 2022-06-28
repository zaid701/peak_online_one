// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peak_online_one/main.dart';

class editprojectdetails extends StatefulWidget {
  const editprojectdetails({Key? key}) : super(key: key);

  @override
  State<editprojectdetails> createState() => _editprojectdetailsState();
}

class _editprojectdetailsState extends State<editprojectdetails> {
  String dropdownvalue = "Select Status";
  var items = ['Select Status', "as"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar2(context, "Project"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Edit Project Details",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xff666666)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                  color: Color(0xFFF7F9FC),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Project Name : Web Design And Appss",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color(0xff666666)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Status*",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xff666666)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xffE2E6EB))),
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
                            child: Text(
                              items,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xff495057)),
                            ),
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
                    height: 15,
                  ),
                  Text(
                    "Start Date*",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xff666666)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                        suffixIcon: Icon(Icons.calendar_month),
                        hintText: "2022-03-04",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff495057)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffE2E6EB)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Target Completion Date*",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                        suffixIcon: Icon(Icons.calendar_month),
                        hintText: "2022-03-19",
                        hintStyle: TextStyle(fontSize: 13),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffE2E6EB)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                      child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        gradient: colorssl()),
                    child: Text(
                      "Update",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.white,
                      ),
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
