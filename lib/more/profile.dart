// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/morepages.dart/Renewal.dart';
import 'package:peak_online_one/morepages.dart/SLA.dart';
import 'package:peak_online_one/morepages.dart/contact.dart';
import 'package:peak_online_one/morepages.dart/groups.dart';
import 'package:peak_online_one/morepages.dart/notification.dart';
import 'package:peak_online_one/morepages.dart/preference.dart';
import 'package:peak_online_one/morepages.dart/security.dart';

import '../morepages.dart/accpage.dart';

class profilee extends StatefulWidget {
  final int i;
  const profilee({Key? key, required this.i}) : super(key: key);

  @override
  State<profilee> createState() => _profileeState();
}

class _profileeState extends State<profilee> with TickerProviderStateMixin {
  late PageController pageController;
  late TabController tb;
  @override
  void initState() {
    tb = TabController(length: 9, vsync: this);
    pageController = PageController(initialPage: widget.i);
    tb.index = widget.i;
    super.initState();
  }

  List a = [
    FaIcon(FontAwesomeIcons.user),
    FaIcon(FontAwesomeIcons.calendar),
    FaIcon(FontAwesomeIcons.lock),
    FaIcon(FontAwesomeIcons.contactBook),
    FaIcon(FontAwesomeIcons.handshake),
    FaIcon(FontAwesomeIcons.database),
    FaIcon(FontAwesomeIcons.peopleGroup),
    FaIcon(FontAwesomeIcons.sliders),
    FaIcon(FontAwesomeIcons.bell)
  ];
  List b = [
    "Account",
    "Renewals",
    "Security",
    "Contact",
    "SLA",
    "Data",
    "Group",
    "Preference",
    "Notification"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(b[tb.index]),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.info_outline_rounded),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 242, 241, 241),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 6),
            child: TabBar(
                controller: tb,
                isScrollable: true,
                onTap: (i) => setState(() {
                      pageController.jumpToPage(i);
                    }),
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.grey[600],
                tabs: [
                  Tab(
                    child: ico(a[0], 0),
                    height: 80,
                  ),
                  Tab(child: ico(a[1], 1), height: 80),
                  Tab(child: ico(a[2], 2), height: 80),
                  Tab(child: ico(a[3], 3), height: 80),
                  Tab(child: ico(a[4], 4), height: 80),
                  Tab(child: ico(a[5], 5), height: 80),
                  Tab(child: ico(a[6], 6), height: 80),
                  Tab(child: ico(a[7], 7), height: 80),
                  Tab(child: ico(a[8], 8), height: 80),
                ]),
          ),
          Expanded(
            child: PageView(
              // ignore: sort_child_properties_last
              children: [
                accpage(
                  pg: pageController,
                ),
                renewall(),
                securityy(),
                contact(),
                SLCPAGE(),
                SLCPAGE(),
                Groupspage(),
                preference(),
                notification(pg: pageController,),
              ],
              controller: pageController,
              onPageChanged: (int i) => setState(() {
                tb.index = i;
              }),
            ),
          )
        ],
      ),
    );
  }

  Widget ico(
    FaIcon ic,
    int i,
  ) =>
      Column(
        children: [
          Container(
              height: 60,
              width: 60,
              decoration: tb.index == i
                  ? BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff67CFE5),
                          Color(0xff5CA500),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16))
                  : BoxDecoration(
                      color: Color(0xFFF7F9FC),
                      borderRadius: BorderRadius.circular(10)),
              child: Center(child: ic)),
          Text(
            b[i],
            style: TextStyle(color: Colors.grey[600]),
          )
        ],
      );
}
