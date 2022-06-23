// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../main.dart';

class quotehistory extends StatefulWidget {
  const quotehistory({Key? key}) : super(key: key);

  @override
  State<quotehistory> createState() => _quotehistoryState();
}

class _quotehistoryState extends State<quotehistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: appbar2(context, "Quotes History"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Quotes History",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Spacer(),
                Icon(
                  Icons.search,
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                  color: Color(0xFFF7F9FC),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Quoterow(),
                  Divider(),
                  Quoterow(),
                  Divider(),
                  Quoterow()
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {}, icon: FaIcon(FontAwesomeIcons.angleLeft)),
                Text("1"),
                IconButton(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.angleRight)),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

Widget Quoterow() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text("Digital Marketing",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        SizedBox(
          height: 5,
        ),
        Text("Service Type: Pay Per Click"),
        SizedBox(
          height: 5,
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("Time Frame:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
            Text("18-03-2022", style: TextStyle(fontSize: 12))
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text("Requierments:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
        SizedBox(
          height: 5,
        ),
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
            style: TextStyle(fontSize: 12)),
        SizedBox(
          height: 10,
        )
      ],
    );
