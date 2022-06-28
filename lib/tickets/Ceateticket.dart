// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:peak_online_one/main.dart';

class createticket extends StatefulWidget {
  const createticket({Key? key}) : super(key: key);

  @override
  State<createticket> createState() => _createticketState();
}

class _createticketState extends State<createticket> {
  String dropdownvalue = "Select issue Type";
  var items = ['Select issue Type', "as"];
  TextEditingController textarea = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar2(context, "Create Ticket"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          decoration: BoxDecoration(
              color: Color(0xFFF7F9FC),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("What's happening with your Peak Online package?",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Select the issue your query relates to. This will help our team provide quick and effective support.",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
              SizedBox(
                height: 20,
              ),
              Text("Select issue Type",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffCED4DA))),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    isExpanded: true,

                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff495057),
                    ),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12)),
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
                height: 20,
              ),
              Text("Create a Support Ticket",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xff444444))),
              SizedBox(
                height: 10,
              ),
              Text(
                  "If you're already raised a support ticket about a  particular issue, continue the conversation here",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
              SizedBox(
                height: 20,
              ),
              Text("Subject",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                    fillColor: Color(0xffEEEEEE),
                    filled: true,
                    hintText: "Please enter a short summary of the problem",
                    hintStyle: TextStyle(fontSize: 13),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffC6CACE)),
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Description",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: textarea,
                keyboardType: TextInputType.multiline,
                maxLines: 7,
                decoration: InputDecoration(
                    fillColor: Color(0xffEEEEEE),
                    filled: true,
                    hintText:
                        "Please give as much details as possible, including error messages and codes and any steps. Providing any screenshots or error messages can often help us diagnose problems quicker.",
                    hintStyle: TextStyle(fontSize: 13),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffC6CACE)),
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Attach File",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                    suffixIcon: Icon(
                      Icons.attach_file,
                      color: Color(0xff495057),
                    ),
                    hintText: "Upload File",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff495057)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffC6CACE)),
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
                  "Create Ticket",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
              )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
