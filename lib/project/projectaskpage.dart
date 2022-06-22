import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peak_online_one/main.dart';
import 'package:peak_online_one/project/projectattechments.dart';
import 'package:peak_online_one/project/projectmsgarea.dart';
import 'package:peak_online_one/project/projecttask.dart';

class projectaskpage extends StatefulWidget {
  const projectaskpage({Key? key}) : super(key: key);

  @override
  State<projectaskpage> createState() => _projectaskpageState();
}

class _projectaskpageState extends State<projectaskpage>
    with TickerProviderStateMixin {
  late PageController pageControllertask;
  late TabController tbtask;
  @override
  void initState() {
    tbtask = TabController(length: 3, vsync: this);
    pageControllertask = PageController();
    super.initState();
  }

  List a = [
    FaIcon(FontAwesomeIcons.comments),
    FaIcon(FontAwesomeIcons.barsProgress),
    FaIcon(FontAwesomeIcons.paperclip),
  ];
  List b = ["Message Area", "Tasks", "Attachments"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text(b[tbtask.index]),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 6),
            child: TabBar(
                controller: tbtask,
                isScrollable: true,
                onTap: (i) => setState(() {
                      pageControllertask.jumpToPage(i);
                    }),
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.grey[600],
                tabs: [
                  Tab(
                    child: taskico(a[0], 0),
                    height: 80,
                  ),
                  Tab(child: taskico(a[1], 1), height: 80),
                  Tab(child: taskico(a[2], 2), height: 80),
                ]),
          ),
          Divider(),
          Expanded(
            child: PageView(
              // ignore: sort_child_properties_last
              children: [projectmsgarea(), projecttask(), projectattechment()],
              controller: pageControllertask,
              onPageChanged: (int i) => setState(() {
                tbtask.index = i;
              }),
            ),
          )
        ],
      ),
    );
  }

  Widget taskico(
    FaIcon ic,
    int i,
  ) =>
      Column(
        children: [
          Container(
              height: 60,
              width: 60,
              decoration: tbtask.index == i
                  ? BoxDecoration(
                      gradient:colorssl(),
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
