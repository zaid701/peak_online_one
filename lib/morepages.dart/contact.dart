// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../main.dart';

class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Contact Details",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xff666666))),
            SizedBox(
              height: 6,
            ),
            Text(
              "View or update your contact details. Please note that we (and the registries and organisations we use) require accurate, up to date contact details to be held on file at all times. The email address you specify below is required to sign in to Peak Online Support",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff666666)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFF7F9FC)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Update Your Contact Details",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Color(0xffEEEEEE),
                        filled: true,
                        hintText: "Full Name",
                        contentPadding: EdgeInsets.only(left: 28),
                        hintStyle: TextStyle(color: Color(0xffB7B7BD)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6CACE)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        icon: FaIcon(FontAwesomeIcons.flagUsa),
                        hintText: "Country",
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        contentPadding: EdgeInsets.only(left: 28),
                        hintStyle: TextStyle(color: Color(0xffB7B7BD)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6CACE)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Email Address",
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        contentPadding: EdgeInsets.only(left: 28),
                        hintStyle: TextStyle(color: Color(0xffB7B7BD)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6CACE)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Phone number"),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Phone Number",
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        contentPadding: EdgeInsets.only(left: 28),
                        hintStyle: TextStyle(color: Color(0xffB7B7BD)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6CACE)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Address Line1",
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        contentPadding: EdgeInsets.only(left: 28),
                        hintStyle: TextStyle(color: Color(0xffB7B7BD)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6CACE)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Address Line2",
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        contentPadding: EdgeInsets.only(left: 28),
                        hintStyle: TextStyle(color: Color(0xffB7B7BD)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6CACE)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Address Line3",
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        contentPadding: EdgeInsets.only(left: 28),
                        hintStyle: TextStyle(color: Color(0xffB7B7BD)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6CACE)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "City",
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        contentPadding: EdgeInsets.only(left: 28),
                        hintStyle: TextStyle(color: Color(0xffB7B7BD)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6CACE)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Country/State/Province",
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        contentPadding: EdgeInsets.only(left: 28),
                        hintStyle: TextStyle(color: Color(0xffB7B7BD)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6CACE)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "PostCode",
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        contentPadding: EdgeInsets.only(left: 28),
                        hintStyle: TextStyle(color: Color(0xffB7B7BD)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6CACE)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          gradient: colorssl()),
                      child: Text(
                        "Update Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
