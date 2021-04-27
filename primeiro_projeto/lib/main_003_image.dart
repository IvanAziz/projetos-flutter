import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Frases do dia",
      home: Container(
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          border: Border.all(width: 30, color: Colors.white),
        ),
        child: Image.asset("images/rose.jpg"),
      ),
    );
  }
}
