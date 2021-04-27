import 'package:flutter/material.dart';

class HomeApp007 extends StatefulWidget {
  @override
  _HomeApp007State createState() => _HomeApp007State();
}

class _HomeApp007State extends State<HomeApp007> {

  TextEditingController _textControllerAlcool = TextEditingController();
  TextEditingController _textControllerGasolina = TextEditingController();
  String _textoResultado = "";

  void _calcular() {
    double precoAlcool = double.tryParse(_textControllerAlcool.text);
    double precoGasolina = double.tryParse(_textControllerGasolina.text);

    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _textoResultado =
            "Número inválido, digite números maiores que 0 e utilize (.)";
      });
    } else {
      /*
      * Se o preço do álcool dividido pelo preço da gasolina for >= 0.7 então
      * é melhor abastecer com gasolina se não melhor usar álcool.
      * Esse é um cálculo base de mercado.
      * */
      if ((precoAlcool / precoGasolina) >= 0.7) {
        setState(() {
          _textoResultado = "Melhor abastecer com gasolina";
        });
      } else {
        setState(() {
          _textoResultado = "Melhor abastecer com álcool";
        });
      }

      // Demostração de como limpar os campos, remova o comentário para habilitar.
      //_limparCampos();
    }
  }

  /**
   * A atribuição através do controller dispensa o uso do setState() pois ele já
   * realiza esse controle de atualização internamente.
   */
/*
    void _limparCampos() {
    _textControllerAlcool.clear();
    _textControllerGasolina.clear();
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset("images/logo_app007.png"),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Saiba qual a melhor opção para abastecimento do seu carro",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço Alcool, ex 1.59",
                ),
                style: TextStyle(
                  fontSize: 22,
                ),
                controller: _textControllerAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço Gasolina, ex 2.47",
                ),
                style: TextStyle(
                  fontSize: 22,
                ),
                controller: _textControllerGasolina,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  ),
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  onPressed: _calcular,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  _textoResultado,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
