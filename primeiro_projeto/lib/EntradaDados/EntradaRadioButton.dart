import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  String _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados - Radio Button"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("Creates a material design radio button"),
            Row(
              children: <Widget>[
                Radio(
                  value: "m",
                  groupValue: _escolhaUsuario,
                  onChanged: (String escolha) {
                    print("Resultado " + escolha);
                    setState(() {
                      _escolhaUsuario = escolha;
                    });
                  },
                ),
                Text("Masculino"),
              ],
            ),
            Row(
              children: <Widget>[
                Radio(
                  value: "f",
                  groupValue: _escolhaUsuario,
                  onChanged: (String escolha) {
                    print("Resultado " + escolha);
                    setState(() {
                      _escolhaUsuario = escolha;
                    });
                  },
                ),
                Text("Feminino"),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 100,
              ),
            ),
            Text(
              "Creates a combination of a list tile and a radio button.",
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
            ),
            RadioListTile(
              title: Text("Masculino"),
              value: "m",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            RadioListTile(
              title: Text("Feminino"),
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            RadioListTile(
              title: Text("LGBTS"),
              value: "o",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                print("Escolha do usuário: " + _escolhaUsuario.toString());
              },
              child: Text("Salvar"),
            )
          ],
        ),
      ),
    );
  }
}
