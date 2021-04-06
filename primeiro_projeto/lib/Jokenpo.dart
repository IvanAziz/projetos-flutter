import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Jokenpo extends StatefulWidget {
  @override
  _JokenpoState createState() => _JokenpoState();
}

class _JokenpoState extends State<Jokenpo> {
  var _imagemApp = AssetImage("images/padrao.png");
  var _mensagem = "Escolha uma opção abaixo";
  var _vezesGanhou = 0;
  var _vezesPerdeu = 0;
  var _vezesEmpate = 0;

  void _reiniciaContador()
  {
    setState(() {
      this._imagemApp = AssetImage("images/padrao.png");
      this._mensagem = "Escolha uma opção abaixo";
      this._vezesEmpate = 0;
      this._vezesGanhou = 0;
      this._vezesPerdeu = 0;
    });
  }

  void _opcaoSelecionada(String escolhaUsuario) {
    var _opcoes = ["pedra", "papel", "tesoura"];
    var numero = Random().nextInt(3);
    var escolhaApp = _opcoes[numero];

    // Atualização da imagem escolhida pelo app
    switch (escolhaApp) {
      case "pedra":
        setState(() {
          this._imagemApp = AssetImage("images/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          this._imagemApp = AssetImage("images/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          this._imagemApp = AssetImage("images/tesoura.png");
        });
        break;
    }

    // Validação do ganhador
    if (escolhaUsuario == "pedra" && escolhaApp == "tesoura" ||
        escolhaUsuario == "tesoura" && escolhaApp == "papel" ||
        escolhaUsuario == "papel" && escolhaApp == "pedra") {
      setState(() {
        this._mensagem = "Parabéns!!! Você ganhou :)";
        this._vezesGanhou++;
      });
    } else if (escolhaApp == "pedra" && escolhaUsuario == "tesoura" ||
        escolhaApp == "tesoura" && escolhaUsuario == "papel" ||
        escolhaApp == "papel" && escolhaUsuario == "pedra") {
      setState(() {
        this._mensagem = "Você perdeu :(";
        this._vezesPerdeu++;
      });
    } else {
      setState(() {
        this._mensagem = "Empatamos :|";
        this._vezesEmpate++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("JokenPo")),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
            Widget>[
          Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text("Escolha do App:",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Image(image: this._imagemApp),
          Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(_mensagem,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                  onTap: () => _opcaoSelecionada("pedra"),
                  child: Image.asset("images/pedra.png", height: 100)),
              GestureDetector(
                  onTap: () => _opcaoSelecionada("papel"),
                  child: Image.asset("images/papel.png", height: 100)),
              GestureDetector(
                  onTap: () => _opcaoSelecionada("tesoura"),
                  child: Image.asset("images/tesoura.png", height: 100)),
            ],
          ),
          GestureDetector(
            onTap: () => {
              _reiniciaContador(),
            },
            child: Padding(
              padding: EdgeInsets.only(top: 160),
              child: Text(
                "Clique para reiniciar partida",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            )
          )
        ]),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  ":) = ${this._vezesGanhou}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  ":| = ${this._vezesEmpate}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(":( = ${this._vezesPerdeu}",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ));
  }
}
