import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;
  bool _habilitaMusica = false;
  bool _habilitaCarregamentoAutomaticoImagem = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados - Switch"),
      ),
      body: Container(
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Text("Creates a material design switch"),
          Padding(
            padding: EdgeInsets.only(top: 15),
          ),
          Row(children: <Widget>[
            Switch(
                value: _escolhaUsuario,
                onChanged: (bool valor) {
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }),
            Text("Notificação do usuário"),
          ]),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Text("Creates a combination of a list tile and a switch"),
          SwitchListTile(
              title: Text("Notificação do usuário"),
              value: _escolhaUsuario,
              onChanged: (bool valor) {
                setState(() {
                  _escolhaUsuario = valor;
                });
              }),
          SwitchListTile(
              title: Text("Música"),
              value: _habilitaMusica,
              onChanged: (bool valor) {
                setState(() {
                  _habilitaMusica = valor;
                });
              }),
          SwitchListTile(
              title: Text("Carrega imagem automáticamente?"),
              value: _habilitaCarregamentoAutomaticoImagem,
              onChanged: (bool valor) {
                setState(() {
                  _habilitaCarregamentoAutomaticoImagem = valor;
                });
              }),
        ]),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(30),
            child: ElevatedButton(
              onPressed: () {
                print("Notificação do usuário : " +
                    _escolhaUsuario.toString() +
                    "; Música ? : " +
                    _habilitaMusica.toString() +
                    "; Carrega imagem automáticamente ? : " +
                    _habilitaCarregamentoAutomaticoImagem.toString());
              },
              child: Text("Salvar"),
            ),
          ),
        ],
      ),
    );
  }
}
