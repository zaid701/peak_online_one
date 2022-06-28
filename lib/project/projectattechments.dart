// ignore_for_file: prefer_const_constructors, camel_case_types
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../main.dart';

class projectattechment extends StatefulWidget {
  const projectattechment({Key? key}) : super(key: key);

  @override
  State<projectattechment> createState() => _projectattechmentState();
}

class _projectattechmentState extends State<projectattechment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "Attachments List",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xff666666)),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.search,
                size: 25,
                color: Color(0xff7A7A7B),
              ),
              Spacer(),
              InkWell(
                onTap: () => attechfilealert(),
                child: Container(
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                    gradient: colorssl(),
                    borderRadius: BorderRadius.circular(27),
                  ),
                  child: Center(
                    child: FittedBox(
                        child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () => attechfilealert(),
                child: Text(
                  "Add File",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                ),
              ),

              SizedBox(
                width: 15,
              ),
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
                attechmentrow(),
                Divider(),
                attechmentrow(),
                Divider(),
                attechmentrow(),
                Divider(),
                attechmentrow(),
                Divider(),
                attechmentrow(),
                Divider(),
                attechmentrow(),
                Divider(),
                attechmentrow(),
                Divider(),
                attechmentrow(),
                Divider(),
                attechmentrow(),
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

  Widget attechmentrow() => Row(
        children: [
          SizedBox(
            width: 7,
            height: 47,
          ),
          Icon(
            Icons.attachment_outlined,
            size: 18,
            color: Colors.grey[600],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Attachment : sdgf",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              Text("File name",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
            ],
          ),
          Spacer(),
          Icon(
            Icons.cloud_download_rounded,
            size: 20,
            color: Colors.grey[600],
          ),
          SizedBox(
            width: 7,
          ),
        ],
      );

  Future attechfilealert() => showDialog(
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Center(
                    child: Text(
                      "Add File",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Title*",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Please enter title",
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
                    height: 20,
                  ),
                  Center(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                            gradient: colorssl(),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text("Save")),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ));
}
