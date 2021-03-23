import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      title: "Frases do dia",
      home: Container(
          color: Colors.white,
          child: Column(
              children: <Widget>[
                TextButton(
                  // AndroidStudio - LogCat - Filtrar termo botão e acompanhar debug o log sendo gerado a cada clique.
                    onPressed: () {
                      print("Botão Pressionado");
                    },
                    child: Text(
                        "Clique aqui para gerar LOG",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.cyanAccent,
                          decoration: TextDecoration.none,
                        )
                    )
                )
              ]
          )
      )
  ));
}

