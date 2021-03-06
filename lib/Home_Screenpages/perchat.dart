// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peak_online_one/main.dart';

class perchat extends StatefulWidget {
  const perchat({Key? key}) : super(key: key);

  @override
  State<perchat> createState() => _perchatState();
}

class _perchatState extends State<perchat> {
  List<String> str = [
    "qui est esse",
    "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "ea molestias quasi exercitationem repellat qui ipsa sit aut",
    "eum et est occaecati",
    "dolorem eum magni eos aperiam quia",
    "qui est esse",
    "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "ea molestias quasi exercitationem repellat qui ipsa sit aut",
    "eum et est occaecati",
    "dolorem eum magni eos aperiam quia",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff95BB65),
        leadingWidth: 30,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(foregroundImage: Image.asset("asset/imgg.png").image),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Ashraf Chauhan",
                ),
                Text(
                  "Online",
                  style: TextStyle(fontSize: 12),
                )
              ],
            )
          ],
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 12),
              child: Icon(
                Icons.info_outline_rounded,
              )),
          Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Icon(Icons.notifications)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: str.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 10),
              child: chats(index, str[index]),
            ),
          )),
          Container(
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("asset/gallery.svg")),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF5F5F5),
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Type A Massege..",
                        hintStyle: TextStyle(color: Colors.black)),
                  )),
                  IconButton(
                    onPressed: () {},
                    icon: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) =>
                          colorssl().createShader(bounds),
                      child: SvgPicture.asset(
                        "asset/endchat.svg",
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget chats(int i, String msg) {
  return i % 2 == 0
      ? Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    color: Color(0xffF5F5F5)),
                child: Text(msg,
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "12:00 PM",
                style: TextStyle(fontSize: 10),
              )
            ],
          ))
      : Align(
          alignment: Alignment.centerRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  gradient: colorssl(),
                ),
                child: Text(
                  msg,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("12:00 PM",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500))
            ],
          ));
}
