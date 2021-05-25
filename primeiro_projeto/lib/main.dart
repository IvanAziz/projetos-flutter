import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:core';


void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _resultado = "O resultado da pesquisa é?";

  void _recuperarCep() async {
    String url = "https://viacep.com.br/ws/31155150/json/";
    Uri uri = Uri.parse(url);
    http.Response response;
    response = await http.get(uri);

    Map<String, dynamic> retorno = jsonDecode(response.body);

    String logradouro = retorno["logradouro"];
    String complemento = retorno["complemento"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];
    String uf = retorno["uf"];

    setState(() {
      _resultado = "$logradouro, $complemento, $bairro, $localidade - $uf";
    });
    print(_resultado);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de serviço web"),
      ),
      body: Container(
          padding: EdgeInsets.all(40),
          child: Column(children: [
            Image.asset("images/bitcoin.png"),
            ElevatedButton(
              onPressed: _recuperarCep,
              child: Text("Atualizar"),
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((
                    states) => Colors.yellow),
              ),
            ),
            Text(_resultado),
          ])),
    );
  }
}
