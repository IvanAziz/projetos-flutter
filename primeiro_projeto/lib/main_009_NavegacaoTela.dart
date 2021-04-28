import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: TelaPrincipal(),
    ),
  );
}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.resolveWith(
                    (states) => EdgeInsets.all(15)),
              ),
              child: Text("Ir para a segunda tela"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaSecundaria()));
              },
            )
          ],
        ),
      ),
    );
  }
}

class TelaSecundaria extends StatefulWidget {
  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundária"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.resolveWith(
                    (states) => EdgeInsets.all(15)),
              ),
              child: Text("Ir para a terceira tela"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaTerceira()));
              },
            )
          ],
        ),
      ),
    );
  }
}

class TelaTerceira extends StatefulWidget {
  @override
  _TelaTerceiraState createState() => _TelaTerceiraState();
}

class _TelaTerceiraState extends State<TelaTerceira> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Terceira"),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Text("Chegou na terceira tela"),
      ),
    );
  }
}
