import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
  TextEditingController controllerCep = TextEditingController();

  void _recuperarCep() async {
    String url = "https://viacep.com.br/ws/${controllerCep.text}/json/";

    http.Response response;
    response = await http.get(url);
    Map<String, dynamic> retorno = json.decode(response.body);

    String logradouro = retorno["logradouro"];
    String complemento = retorno["complemento"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];
    String uf = retorno["uf"];

    setState(() {
      _resultado =
          "$logradouro, $complemento, $bairro, $localidade - $uf";
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
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite o cep: ex: 05428200"
              ),
              style: TextStyle(
                fontSize: 20
              ),
              controller: controllerCep),
            ElevatedButton(
              onPressed: _recuperarCep,
              child: Text("Clique aqui"),
            ),
            Text(_resultado),
          ])),
    );
  }
}
