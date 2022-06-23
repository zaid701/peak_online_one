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
      backgroundColor: Color(0xffE5E5E5),
      appBar: appbar2(context, "Create Ticket"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          decoration: BoxDecoration(
              color: Color(0xFFF7F9FC),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("What's happening with your Peak Online package?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Select the issue your query relates to. This will help our team provide quick and effective support."),
              SizedBox(
                height: 10,
              ),
              Text("Select issue Type"),
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
              Text("Create a Support Ticket",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              SizedBox(
                height: 5,
              ),
              Text(
                  "If you're already raised a support ticket about a  particular issue, continue the conversation here"),
              SizedBox(
                height: 10,
              ),
              Text("Subject"),
              SizedBox(
                height: 5,
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    hintText: "Please enter a short summary of the problem",
                    hintStyle: TextStyle(fontSize: 13),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Description"),
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
                    hintText:
                        "Please give as much details as possible, including error messages and codes and any steps. Providing any screenshots or error messages can often help us diagnose problems quicker.",
                    hintStyle: TextStyle(fontSize: 13),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Attach File"),
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
                height: 20,
              ),
              Center(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green),
                child: Text(
                  "Update Details",
                  style: TextStyle(fontWeight: FontWeight.w500),
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
