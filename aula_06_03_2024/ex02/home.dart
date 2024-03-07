import 'package:flutter/material.dart';

import 'widgets/textos.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo 02"),
        backgroundColor: Colors.lightBlueAccent,
    ),
      body:  _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.black12,
      child: Column(
        children: <Widget>[
          Text("Texto01"),
          Textos("Texto02"),
        ],
      ),
    );
  }

}
