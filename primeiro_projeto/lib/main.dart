import 'package:flutter/material.dart';
import 'package:primeiro_projeto/EntradaDados/EntradaRadioButton.dart';
///import 'package:primeiro_projeto/EntradaDados/EntradaCheckBox.dart';
///import 'package:primeiro_projeto/CampoTexto.dart';

// Entrada de dados, alterar o home para validar diferentes entradas de dados
void main() {
  runApp(
    MaterialApp(
      //home: CampoTexto(),
      //home: EntradaCheckBox(),
      home: EntradaRadioButton(),
    ),
  );
}
