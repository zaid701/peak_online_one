// ignore_for_file: prefer_const_constructors, prefer_adjacent_string_concatenation, prefer_interpolation_to_compose_strings
import 'package:flutter/material.dart';
import '../main.dart';

class SLCPAGE extends StatefulWidget {
  const SLCPAGE({Key? key}) : super(key: key);

  @override
  State<SLCPAGE> createState() => _SLCPAGEState();
}

class _SLCPAGEState extends State<SLCPAGE> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("HISTORY, PURPOSE AND USAGE",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xff444444))),
            SizedBox(
              height: 6,
            ),
            Text(
              "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:" +
                  "\n\n“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”" +
                  "\n\nThe purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn't distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content." +
                  "\n\nThe passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it's seen all around the web; on templates, websites, and stock designs. Use our generator to get your own, or read on for the authoritative history of lorem ipsum.",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff666666)),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(top: 10, bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFF7F9FC)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Signature:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            gradient: colorssl(),
                          ),
                          child: Text(
                            "Save",
                            style: TextStyle(color: Colors.white),
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Uploading Signature",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.green[200],
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
