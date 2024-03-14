
import 'package:flutter/material.dart';

import 'widgets/input.dart';
import 'widgets/textos.dart';
import 'widgets/button.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _notaP1 = TextEditingController();
  final _notaProjeto = TextEditingController();
  final _notaAtividades = TextEditingController();

  double media = 0;

  String res = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcular média"),
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
          Textos("Informe a nota da P1"),
          Input("Nota da P1", "Digite de 0 a 10: ", controller: _notaP1,),

          Textos("Informe a nota do Projeto"),
          Input("Nota do Projeto", "Digite de 0 a 10: ", controller: _notaProjeto,),

          Textos("Informe a pontuação das atividades"),
          Input("Pontuação das atividades", "Digite de 0 a 2: ", controller: _notaAtividades,),

          Buttons("Botão de click", onPressed: _seuMetodoDeClick,),

          Textos(res)
        ],
      ),
    );
  }

  void _seuMetodoDeClick() {
    setState(() {
      media = double.parse(_notaP1.text) * 0.3 +
               double.parse(_notaProjeto.text) * 0.5 +
               double.parse(_notaAtividades.text);

      if (media >= 6){
        res = "O aluno  foi aprovado com média " + (media.toStringAsPrecision(3)).toString() ;
      }else {
        res = "O aluno  foi reprovado com média " + (media.toStringAsPrecision(3)).toString() ;
      }
    });
  }
}
