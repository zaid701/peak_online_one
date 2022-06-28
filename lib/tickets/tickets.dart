// ignore_for_file: prefer_const_constructors, sort_child_properties_last, curly_braces_in_flow_control_structures, camel_case_types
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:peak_online_one/Home_Screenpages/loadingwidget.dart';
import 'package:peak_online_one/main.dart';
import 'package:peak_online_one/model/count.dart';
import 'package:peak_online_one/model/ticketmodel.dart';
import 'package:peak_online_one/tickets/Ceateticket.dart';
import 'package:peak_online_one/tickets/ticketchat.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../model/header.dart';
class tickets extends StatefulWidget {
  final PersistentTabController controller;
  const tickets({Key? key, required this.controller}) : super(key: key);

  @override
  State<tickets> createState() => _ticketsState();
}

class _ticketsState extends State<tickets> {
  bool load = true;
  int c = 1;
  int open = 0;
  int progress = 0;
  int close = 0;
  late Ticketdata auto;
  late Count _count;
  @override
  void initState() {
    getticketdata(url).then((value) {
      auto = value;
      // opent(auto);
    });
    getticketcpount(
            "http://44.234.205.222/peakonline/api/user/ticket/status/count")
        .then((value) {
      _count = value;
      open = _count.data![0].open!.toInt();
      progress = _count.data![0].progress!.toInt();
      close = _count.data![0].close!.toInt();
      // opent(auto);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar1(context, widget.controller, "Ticket", false),
      body: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      color: Color(0xFFF7F9FC),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Open",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        open.toString(),
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      color: Color(0xFFF7F9FC),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "In Progress",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        progress.toString(),
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      color: Color(0xFFF7F9FC),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Closed",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        close.toString(),
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Ticket List",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xff666666)),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.search,
                size: 18,
              ),
              Spacer(),
              InkWell(
                onTap: () => pushNewScreen(context,
                    screen: createticket(), withNavBar: false),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: colorssl()),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Create New Ticket"),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Color(0xFFF7F9FC),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  load
                      ? ListView.builder(
                          shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [ticketrowload(), Divider()],
                            );
                          },
                        )
                      : ListView.builder(
                          controller: scrollController,
                          shrinkWrap: true,
                          itemCount: auto.data?.paginateData!.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                ticketrow(context, auto, index),
                                Divider()
                              ],
                            );
                          },
                        ),
                ],
              )),
          SizedBox(
            height: 10,
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
                    onTap: () => c > 1
                        ? setState(() {
                            c--;
                            load = true;
                            getticketdata(auto.data!.prevPageUrl.toString())
                                .then((value) {
                              auto = value;
                              //  opent(auto);
                            });
                          })
                        : null,
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
                c.toString(),
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
                    onTap: () => c < auto.data!.links!.length - 2
                        ? setState(() {
                            c++;
                            load = true;
                            getticketdata(auto.data!.nextPageUrl.toString())
                                .then((value) {
                              auto = value;
                              //opent(auto);
                            });
                          })
                        : null,
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
            height: 30,
          )
        ]),
      ),
    );
  }

  getticketcpount(String url) async {
    Uri uri = Uri.parse(url);
    // ignore: prefer_const_declarations
    final String token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiZjJhMzA2MDUyZWE3NTRhMTc3ZWFhMDMyMTNiYTgyMDY0MzU1OTQ5ZWJkMGM4MjJhNmU0OTQ3Yzg3ZmM5ODk4ODM1ZTE1OTdlNmFiOTNmNDQiLCJpYXQiOjE2NTYzMDkyODIuNTgxMTczLCJuYmYiOjE2NTYzMDkyODIuNTgxMTc4LCJleHAiOjE2ODc4NDUyODIuNTc1MjIxLCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.cpRdkjwAD8puJwmY8Ofhq4di5B7pdmLlOAKqgo15nWW5wVMJEwVtiMLfOaeesOZz6WWATNKQLtY_LcdvKjF58Z8OXd9at5qRLsBRu-p9Oydv5AHcXmw_ayoR74px9v0ffpMWXp8fru9TH-rlVDlwGj0matbHBtpUgWTgB9fv5ldlTYXfajpNobTUS63tKmmocMtj6kI6CyD5n8SZAKdNJwFWj0Uqy_z2_9x3MV6VleqdDr6E6ZbyuMYTwd8wcZ1rHz-NlhfRvWw0AA3ZX87YUBY-JtEO3la6RGjtbr02IaWzqnanPVxZ75HZm4uPb2S6LcekPjbs7fhbS9WjA1AYmltDcJodIv1Ldrat-Q1uCfWKLRkU-EM89bM5ZKdaW8PxKlNc24s3bCbFhcs1bobPx_HF3cpeFm4erfHd7jN59S43KE_6DYiLm9LnqL0eM7gXp-DXDiabQ-95H8b_MhGx2QhlSdez75nUjcc6NPNkruLLEweZH-6Si-w6_llc7UNNzSYp0swlKWyDouWF57dXjz_EmVvqwB_Q1EUPgtQkvtaeUYuWA8pDRHsKhvM5fAhjdqcXFvl2dGRCZ3QOvRhjpaoPVgwRXN1rs0caWT91he_rAyQg1k2YrLxjVCYgSf6DPhqBYtYpkBGJBCrb_PuZP-cqpaDCexYkXO3imOdnBlI";

    final Response = await get(uri, headers: headerWithToken(token: token));
    return Count.fromJson(jsonDecode(Response.body));
  }

  String url = "http://44.234.205.222/peakonline/api/user/ticket/list";

  getticketdata(String url) async {
    Uri uri = Uri.parse(url);
    // ignore: prefer_const_declarations
    final String token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiZjJhMzA2MDUyZWE3NTRhMTc3ZWFhMDMyMTNiYTgyMDY0MzU1OTQ5ZWJkMGM4MjJhNmU0OTQ3Yzg3ZmM5ODk4ODM1ZTE1OTdlNmFiOTNmNDQiLCJpYXQiOjE2NTYzMDkyODIuNTgxMTczLCJuYmYiOjE2NTYzMDkyODIuNTgxMTc4LCJleHAiOjE2ODc4NDUyODIuNTc1MjIxLCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.cpRdkjwAD8puJwmY8Ofhq4di5B7pdmLlOAKqgo15nWW5wVMJEwVtiMLfOaeesOZz6WWATNKQLtY_LcdvKjF58Z8OXd9at5qRLsBRu-p9Oydv5AHcXmw_ayoR74px9v0ffpMWXp8fru9TH-rlVDlwGj0matbHBtpUgWTgB9fv5ldlTYXfajpNobTUS63tKmmocMtj6kI6CyD5n8SZAKdNJwFWj0Uqy_z2_9x3MV6VleqdDr6E6ZbyuMYTwd8wcZ1rHz-NlhfRvWw0AA3ZX87YUBY-JtEO3la6RGjtbr02IaWzqnanPVxZ75HZm4uPb2S6LcekPjbs7fhbS9WjA1AYmltDcJodIv1Ldrat-Q1uCfWKLRkU-EM89bM5ZKdaW8PxKlNc24s3bCbFhcs1bobPx_HF3cpeFm4erfHd7jN59S43KE_6DYiLm9LnqL0eM7gXp-DXDiabQ-95H8b_MhGx2QhlSdez75nUjcc6NPNkruLLEweZH-6Si-w6_llc7UNNzSYp0swlKWyDouWF57dXjz_EmVvqwB_Q1EUPgtQkvtaeUYuWA8pDRHsKhvM5fAhjdqcXFvl2dGRCZ3QOvRhjpaoPVgwRXN1rs0caWT91he_rAyQg1k2YrLxjVCYgSf6DPhqBYtYpkBGJBCrb_PuZP-cqpaDCexYkXO3imOdnBlI";

    final Response = await get(uri, headers: headerWithToken(token: token));

    setState(() {
      load = false;
    });
    return Ticketdata.fromJson(jsonDecode(Response.body));
  }
}

Widget ticketrow(BuildContext context, Ticketdata auto, int index) {
  PaginateData ur = auto.data!.paginateData![index];
  int code = ur.statusId as int;

  Color c;
  String task;
  String task2;
  if (code == 1) {
    c = Color(0xffE56767);
    task = "Awaiting staff reply";
    task2 = "Open";
  } else if (code == 2) {
    c = Color(0xff95BB65);
    task = "Completed";
    task2 = "Close";
  } else {
    c = Color(0xff67CFE5);
    task = "Awaiting your reply";
    task2 = "In Progress";
  }

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: InkWell(
      onTap: () => pushNewScreen(context,
          screen: tickectchat(ticketdata: ur), withNavBar: false),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(ur.title.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xff444444))),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(ur.categoryName.toString(),
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 14)),
                        SizedBox(
                          height: 8,
                        ),
                        Text(task,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: task == "Awaiting your reply"
                                    ? Color(0xff75D3EB)
                                    : Color(0xff444444))),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                        color: c, borderRadius: BorderRadius.circular(7)),
                    child: Center(
                        child: FittedBox(
                            child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text(task2),
                    ))),
                  ),
                ],
              ),
            ],
          )),
          Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: Colors.grey,
          ),
        ],
      ),
    ),
  );
}

Widget ticketrowload() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomWidget.rectangular(
              height: 15,
              width: 50,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      CustomWidget.rectangular(
                        height: 15,
                        width: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CustomWidget.rectangular(
                        height: 15,
                        width: 50,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 25,
                  width: 60,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(7)),
                  child: Center(
                      child: FittedBox(
                          child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: CustomWidget.rectangular(
                      height: 15,
                      width: 50,
                    ),
                  ))),
                ),
              ],
            ),
          ],
        )),
        Icon(
          Icons.arrow_forward_ios,
          size: 15,
          color: Colors.grey,
        ),
      ],
    ),
  );
}
