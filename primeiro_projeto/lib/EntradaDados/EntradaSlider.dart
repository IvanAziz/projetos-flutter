import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _valorSlider = 5;
  String _valorSliderLabel = "5";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entrada de dados - Slider"),
        ),
        body: Container(
          padding: EdgeInsets.all(60),
          child: Column(
            children: <Widget>[
              Text("A Material Design slider"),
              Slider(
                  value: _valorSlider,
                  min: 0,
                  max: 10,
                  divisions: 10,
                  label: _valorSliderLabel,
                  activeColor: Colors.red,
                  inactiveColor: Colors.grey,
                  onChanged: (double valor) {
                    setState(() {
                      _valorSlider = valor;
                      _valorSliderLabel = _valorSlider.toString();
                    });
                  })
            ],
          ),
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Salvar"),
              ),
            ),
          ],
        ));
  }
}
