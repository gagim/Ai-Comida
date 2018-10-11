import 'package:Ai_Comida/view/cadastroView.dart';
import 'package:Ai_Comida/view/criarPedidoView.dart';
import 'package:Ai_Comida/view/detalhesView.dart';
import 'package:Ai_Comida/view/loginView.dart';
import 'package:Ai_Comida/view/menuPrincipal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MaterialApp(
        routes: {
          "/login": (context) => Login(),
          "/cadastro": (context) => Cadastro(),
          "/principal": (context) => TelaPrincipal(),
          "/criarPedido": (context) => CriarPedido(),
          "/detalhes": (context) => Detalhes(),
        },
        home: Login(),
        debugShowCheckedModeBanner: false,
        title: "Ai Comida",
        theme: ThemeData(
          primaryColorDark: Colors.red,
          primaryColor: Colors.red,
        )));
  });
}
