// ignore_for_file: prefer_const_constructors, camel_case_types

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart';
import 'package:peak_online_one/Home_Screenpages/loadingwidget.dart';
import 'package:peak_online_one/Home_Screenpages/perchat.dart';
import 'package:peak_online_one/main.dart';
import 'package:peak_online_one/model/chattab.dart';
import 'package:peak_online_one/model/header.dart';
import 'package:peak_online_one/more/allnotification.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../morepages.dart/knowledgbased.dart';

class Chat_page extends StatefulWidget {
  const Chat_page({Key? key}) : super(key: key);

  @override
  State<Chat_page> createState() => _Chat_pageState();
}

class _Chat_pageState extends State<Chat_page> {
  bool load = true;
  late Tabdata auto;
  @override
  void initState() {
    getchattabapi().then((value) => auto = value);
    super.initState();
  }

  Future<Tabdata> getchattabapi() async {
    Uri uri = Uri.parse("http://44.234.205.222/peakonline/api/chat_example");
    // ignore: prefer_const_declarations
    final String token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiZjJhMzA2MDUyZWE3NTRhMTc3ZWFhMDMyMTNiYTgyMDY0MzU1OTQ5ZWJkMGM4MjJhNmU0OTQ3Yzg3ZmM5ODk4ODM1ZTE1OTdlNmFiOTNmNDQiLCJpYXQiOjE2NTYzMDkyODIuNTgxMTczLCJuYmYiOjE2NTYzMDkyODIuNTgxMTc4LCJleHAiOjE2ODc4NDUyODIuNTc1MjIxLCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.cpRdkjwAD8puJwmY8Ofhq4di5B7pdmLlOAKqgo15nWW5wVMJEwVtiMLfOaeesOZz6WWATNKQLtY_LcdvKjF58Z8OXd9at5qRLsBRu-p9Oydv5AHcXmw_ayoR74px9v0ffpMWXp8fru9TH-rlVDlwGj0matbHBtpUgWTgB9fv5ldlTYXfajpNobTUS63tKmmocMtj6kI6CyD5n8SZAKdNJwFWj0Uqy_z2_9x3MV6VleqdDr6E6ZbyuMYTwd8wcZ1rHz-NlhfRvWw0AA3ZX87YUBY-JtEO3la6RGjtbr02IaWzqnanPVxZ75HZm4uPb2S6LcekPjbs7fhbS9WjA1AYmltDcJodIv1Ldrat-Q1uCfWKLRkU-EM89bM5ZKdaW8PxKlNc24s3bCbFhcs1bobPx_HF3cpeFm4erfHd7jN59S43KE_6DYiLm9LnqL0eM7gXp-DXDiabQ-95H8b_MhGx2QhlSdez75nUjcc6NPNkruLLEweZH-6Si-w6_llc7UNNzSYp0swlKWyDouWF57dXjz_EmVvqwB_Q1EUPgtQkvtaeUYuWA8pDRHsKhvM5fAhjdqcXFvl2dGRCZ3QOvRhjpaoPVgwRXN1rs0caWT91he_rAyQg1k2YrLxjVCYgSf6DPhqBYtYpkBGJBCrb_PuZP-cqpaDCexYkXO3imOdnBlI";

    final Response = await get(uri, headers: headerWithToken(token: token));

    setState(() {
      load = false;
    });
    return Tabdata.fromJson(jsonDecode(Response.body));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff95BB65),
          title: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: SvgPicture.asset(
              "asset/Group.svg",
              height: 45,
            ),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            InkWell(
              onTap: () => pushNewScreen(context,
                  screen: knowledgebased(), withNavBar: true),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(Icons.info_outline_rounded),
              ),
            ),
            InkWell(
              onTap: () => pushNewScreen(context,
                  screen: allnotification(), withNavBar: true),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8),
                child: Icon(Icons.notifications),
              ),
            ),
          ],
        ),
        body: load
            ? ListView.builder(
                itemCount: 9,
                itemBuilder: (context, index) {
                  return loadchattab();
                },
              )
            : ListView.builder(
                itemCount: auto.data!.users?.length,
                itemBuilder: (context, index) {
                  Users ur = auto.data!.users![index];
                  return chattabs(ur.name.toString(), ur.profileUrl.toString());
                },
              ));
  }

  Widget loadchattab() => Container(
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xffF7F9FC),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey,
              )
            ]),
        margin: EdgeInsets.only(top: 15, left: 10, right: 10),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomWidget.circular(height: 54, width: 54),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      CustomWidget.rectangular(height: 10, width: 120),
                      SizedBox(
                        height: 15,
                      ),
                      CustomWidget.rectangular(
                          height: 10,
                          width: MediaQuery.of(context).size.width * 0.6),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  Widget chattabs(String title, String img) => Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffF7F9FC),
          // ignore: prefer_const_literals_to_create_immutables
        ),
        margin: EdgeInsets.only(top: 15, left: 10, right: 10),
        child: InkWell(
          onTap: (() {
            pushNewScreen(
              context,
              screen: perchat(),
              withNavBar: false, // OPTIONAL VALUE. True by default.
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          }),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      foregroundImage: Image.network(
                        "http://44.234.205.222/peakonline" + img,
                        fit: BoxFit.cover,
                      ).image,
                    ),
                    Container(
                        height: 15,
                        width: 15,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          gradient: colorssl(),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: FittedBox(
                            child: Text(
                          "2",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )))
                  ],
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Text("04:46 pm")
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "xjhcvbhsdbvjsdhhsdhfsdfisljhiggbujkghcdziuuubu",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 11,
                            color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
