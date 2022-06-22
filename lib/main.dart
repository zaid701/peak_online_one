// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:peak_online_one/Signin.dart';

void main() {
  runApp(const MyApp());
}
   
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Signin(),
    );
  }
}

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

LinearGradient colorssl() => LinearGradient(
      // ignore: prefer_const_literals_to_create_immutables
      colors: [
        Color(0xff67CFE5),
        Color(0xff5CA500),
      ],
      // ignore: prefer_const_literals_to_create_immutables
      //tileMode: TileMode.decal,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
