import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CaixaTexto extends StatefulWidget {
  @override
  _CaixaTextoState createState() => _CaixaTextoState();
}

class _CaixaTextoState extends State<CaixaTexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              // TextInputType {text, number, emailAdress, datetime}
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Digite um valor"),
              // habilita e desabilita interação com o campo.
              enabled: true,
              maxLength: 4,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
              ),
              obscureText: false,
              obscuringCharacter: '*',
              onChanged: (String texto) {
                print("onChange => Valor digitado:" + texto);
              },
              onSubmitted: (String texto) {
                print("onSubmitted => Valor digitado:" + texto);
              },
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
            child: Text("Salvar"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
              foregroundColor: MaterialStateProperty.all(Colors.black),
            ),
            onPressed: () {
              print(
                  "onPressed => Valor digitado:" + _textEditingController.text);
            },
          ),
        ],
      ),
    );
  }
}
