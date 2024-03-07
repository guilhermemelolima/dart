import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Ex01: Olá mundo!!"),
        backgroundColor: Colors.greenAccent,
      ),

      body: _body(),

    );
  }

  _body() {
    return ListView(
      children: [
        Text("linha1"),
        Text("linha2"),
        Text("linha3"),
        Text("linha4"),
        Text("linha5")
      ],
    );
  }
}
