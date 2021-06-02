import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _itens = [];

  void _carregarItens() {
    // Em HotReload repete o carregamento, a linda de baixo evita isso.
    if (_itens.length != 0) return;

    for (int i = 0; i <= 10; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = "Título $i Lorem ipsun dolor sit amet.";
      item["descricao"] = "Descrição $i ipsun dolor sit amet.";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice) {
            //Imprimindo a lista - Opção 01
            //print("item ${_itens[indice].toString() }");

            //Imprimindo a lista - Opção 02
            //Map<String, dynamic> item = _itens[indice];
            //print("item ${ item["titulo"] }");

            //Imprimindo a lista - Opção 03
            //print("item ${_itens[indice]["titulo"] }");

            return ListTile(
              title: Text(_itens[indice]["titulo"]),
              subtitle: Text(_itens[indice]["descricao"]),
            );
          },
        ),
      ),
    );
  }
}
