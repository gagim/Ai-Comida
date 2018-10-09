import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Cadastre-se",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Stack(
          children: <Widget>[
            Image.asset(
              "img/back.jpg",
              fit: BoxFit.fill,
              height: 1000.0,
              width: 1000.0,
            ),

          ],
        ));
  }
}
