// ignore_for_file: prefer_const_constructors, camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peak_online_one/Home_Screenpages/perchat.dart';

import '../main.dart';

class projectmsgarea extends StatefulWidget {
  const projectmsgarea({Key? key}) : super(key: key);

  @override
  State<projectmsgarea> createState() => _projectmsgareaState();
}

class _projectmsgareaState extends State<projectmsgarea> {
  List<String> str = [
    "qui est esse",
    "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "ea molestias quasi exercitationem repellat qui ipsa sit aut",
    "eum et est occaecati",
    "dolorem eum magni eos aperiam quia",
    "dolorem eum magni eos aperiam quia",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    shaderCallback: (bounds) => colorssl().createShader(bounds),
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
    );
  }
}
