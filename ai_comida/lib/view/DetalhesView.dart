import 'package:flutter/material.dart';

class Detalhes extends StatefulWidget {
  @override
  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Detalhes",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            "img/back_detalhes.jpg",
            fit: BoxFit.fill,
            height: 1000.0,
            width: 1000.0,
          ),

          SingleChildScrollView(
            child: Column(children: <Widget>[
              Text("Eae",style: TextStyle(color: Colors.black),)
            ],) ,
          )

        ],
      ));
  }
}
