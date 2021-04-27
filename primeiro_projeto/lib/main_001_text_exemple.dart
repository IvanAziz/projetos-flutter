import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Frases do dia",
      home: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Text(
              "orem ipsum dolor sit amet, consectetur adipiscing elit.",
              style: TextStyle(
                fontSize: 50,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                letterSpacing: 0,
                wordSpacing: 0,
                decoration: TextDecoration.combine(<TextDecoration>[
                  TextDecoration.overline,
                  TextDecoration.lineThrough
                ]),
                decorationColor: Colors.greenAccent,
                decorationStyle: TextDecorationStyle.double,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
