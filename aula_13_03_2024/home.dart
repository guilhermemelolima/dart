
import 'package:flutter/material.dart';

import 'widgets/input.dart';
import 'widgets/textos.dart';
import 'widgets/button.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _seuTexto = TextEditingController();

  String variavel = "Variável inicial";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo 02"),
        backgroundColor: Colors.red,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.amber,
      child: Column(
        children: [
          Textos(variavel),
          Input("rotulo", "label", controller: _seuTexto,),
          Buttons("Botão de click", onPressed: _seuMetodoDeClick,)
        ],
      ),
    );
  }

  void _seuMetodoDeClick() {
    print("Você apertou o botão");

    setState(() {
      variavel = _seuTexto.text;
    });
  }
}
