import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Home extends StatefulWidget {
  const Home(Key key) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _preco = "0,00";

  void _recuperarpreco() async {
    String url = "https://blockchain.info/ticker";
    final uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    Map<String, dynamic> retorno = json.decode(response.body);
    //print("Resultado: " + retorno.toString());
    //print("Resultado: " + retorno["BRL"]);
    //print("Resultado: " + retorno["BRL"]["buy"]);
    //print("Resultado: " + retorno["BRL"]["buy"].toString());
    setState(() {
      _preco = retorno["BRL"]["buy"].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/bitcoin.png"),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  "R\$ " + _preco,
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => {_recuperarpreco()},
                child: Text(
                  "Atualizar",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.deepOrange)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
