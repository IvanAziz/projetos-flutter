import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool _selecionadoComidaBrasileira = false;
  bool _selecionadoComidaMexicada = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados - CheckBox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("Comida Brasileira"),
            Checkbox(
              value: _selecionadoComidaBrasileira,
              onChanged: (bool valor) {
                setState(() {
                  _selecionadoComidaBrasileira = valor;
                });
              },
            ),
            CheckboxListTile(
                title: Text("Comida Brasileira"),
                subtitle: Text("A melhor comida do mundo!!!"),
                secondary: Icon(Icons.add_box),
                activeColor: Colors.deepPurple,
                selected: true,
                value: _selecionadoComidaBrasileira,
                onChanged: (bool valor) {
                  setState(() {
                    _selecionadoComidaBrasileira = valor;
                  });
                }),
            CheckboxListTile(
                title: Text("Comida Mexicana"),
                subtitle: Text("A melhor comida picante do mundo!!"),
                secondary: Icon(Icons.add_box),
                activeColor: Colors.red,
                selected: true,
                value: _selecionadoComidaMexicada,
                onChanged: (bool valor) {
                  setState(() {
                    _selecionadoComidaMexicada = valor;
                  });
                }),
            ElevatedButton(
              onPressed: () {
                print(
                  "Comida Brasileira: " + _selecionadoComidaBrasileira.toString() + " " +
                  "Comida Mexicana " +  _selecionadoComidaMexicada.toString()
                );
              },
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
