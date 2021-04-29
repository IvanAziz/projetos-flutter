import 'package:flutter/material.dart';
import 'package:primeiro_projeto/AtmConsultoria/TelaCliente.dart';
import 'package:primeiro_projeto/AtmConsultoria/TelaContato.dart';
import 'package:primeiro_projeto/AtmConsultoria/TelaEmpresa.dart';
import 'package:primeiro_projeto/AtmConsultoria/TelaServico.dart';

class HomeApp010 extends StatefulWidget {
  @override
  _HomeApp010State createState() => _HomeApp010State();
}

class _HomeApp010State extends State<HomeApp010> {
  _abrirEmpresa() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaEmpresa() )
    );
  }
  _abrirServico() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaServico() )
    );
  }
  _abrirCliente() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaCliente() )
    );
  }
  _abrirContato() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaContato() )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo_ATM.png"),
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                        onTap: _abrirEmpresa,
                        child: Image.asset("images/menu_empresa.png")),
                    GestureDetector(
                        onTap: _abrirServico,
                        child: Image.asset("images/menu_servico.png"))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                        onTap: _abrirCliente,
                        child: Image.asset("images/menu_cliente.png")),
                    GestureDetector(
                        onTap: _abrirContato,
                        child: Image.asset("images/menu_contato.png"))
                  ],
                ),
              )
            ],
          )),
    );
  }
}
