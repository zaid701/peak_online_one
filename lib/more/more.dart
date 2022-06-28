// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/Home_Screenpages/announcement.dart';
import 'package:peak_online_one/icongred.dart';
import 'package:peak_online_one/main.dart';
import 'package:peak_online_one/more/allnotification.dart';
import 'package:peak_online_one/more/profile.dart';
import 'package:peak_online_one/morepages.dart/knowledgbased.dart';
import 'package:peak_online_one/morepages.dart/knowledgeinfo.dart';
import 'package:peak_online_one/my_flutter_app_icons.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class morepage extends StatefulWidget {
  final BuildContext Maincon;
  final PersistentTabController controller;
  const morepage({Key? key, required this.controller, required this.Maincon})
      : super(key: key);

  @override
  State<morepage> createState() => _morepageState();
}

class _morepageState extends State<morepage> {
  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    return Scaffold(
      appBar: appbar1(context, widget.controller, "More", true),
      backgroundColor: Colors.white,
      body: OrientationBuilder(
        builder: (context, orientation) => Container(
            margin: EdgeInsets.all(15),
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  InkWell(
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) => Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 10,
                              child: Container(
                                  height: 270,
                                  width: 270,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              CircleAvatar(
                                                radius: 70,
                                                foregroundImage: Image.asset(
                                                        "asset/imgg.png")
                                                    .image,
                                              ),
                                              CircleAvatar(
                                                backgroundColor: Colors.white,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(1.0),
                                                  child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.green,
                                                      child: Icon(
                                                          Icons.camera_alt,
                                                          color: Colors.white)),
                                                ),
                                              ),
                                            ]),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Trever Jones",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16))
                                      ],
                                    ),
                                  )),
                            )),
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 10, left: 10, right: 10, bottom: 30),
                      decoration: BoxDecoration(
                          gradient: colorssl(),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              foregroundImage:
                                  Image.asset("asset/imgg.png").image,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Trever Jones",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text("Update Profile Image"),
                            Icon(FaIcon(
                              FontAwesomeIcons.angleRight,
                              size: 17,
                            ).icon)
                          ],
                        ),
                      ),
                    ),
                  ),
                  GridView.count(
                    crossAxisCount: orientation == Orientation.portrait ? 2 : 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3 / 1.5,
                    controller: _scrollController,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    children: [
                      it(MyFlutterApp.renewal, "Renewals", 1),
                      it(MyFlutterApp.account, "Account", 0),
                      it(Icons.lock_outlined, "Security", 2),
                      it(MyFlutterApp.contact, "Contact Detail", 3),
                      it(MyFlutterApp.jen, "Announcement", 11),
                      it(Icons.info_outline_rounded, "Knowledga Base", 12),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Copyright © 2014-2022 Peak Online Limited. All rights reserved "),
                  ),
                  Divider(),
                  ListTile(
                      onTap: (() {
                        logoutshred();
                        Navigator.popAndPushNamed(widget.Maincon, "abd");
                      }),
                      leading: IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.signOut)),
                      title: Text("Log Out"),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.angleRight))),
                  Divider()
                ],
              ),
            )),
      ),
    );
  }

  logoutshred() async {
    final pref = await SharedPreferences.getInstance();
    pref.setString("signed", "false");
  }

  Widget it(IconData i, String name, int i2) {
    return InkWell(
      onTap: () => i2 == 11
          ? pushNewScreen(context, screen: announmentpage())
          : i2 == 12
              ? pushNewScreen(context, screen: knowledgebased())
              : pushNewScreen(context, screen: profilee(i: i2)),
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 7, right: 7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                GradientIcon(i, colorssl()),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.green.shade900,
                  radius: 3,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("New"),
              ],
            ),
            Text(name)
          ],
        ),
      ),
    );
  }
}
