import 'package:Ai_Comida/helper/Connections.dart';
import 'package:Ai_Comida/helper/Dialogs.dart';
import 'package:Ai_Comida/helper/Exeptions.dart';
import 'package:Ai_Comida/widgets/textFields.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  bool telaLogin = false, mostrarSenha = true,mostrarRepitirSenha = true;

  double posicionamento = 0.3;

  TextEditingController _controllerUsuario = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerRepitirSenha = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Image.asset("img/logoBranca.png",
              fit: BoxFit.fill, height: 25.0),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Stack(
          alignment: Alignment(0.0, 0.0),
          children: <Widget>[
            Image.asset(
              "img/back_cadastro.jpg",
              fit: BoxFit.fill,
              height: 1000.0,
              width: 1000.0,
            ),
            SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                child: Form(
                    key: formKey,
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Text("Cadastre-se de um jeito rápido e fácil",style: TextStyle(color: Colors.white,fontSize: 16.0),),
                                  Text("Grátis",style: TextStyle(color: Colors.greenAccent,fontSize: 18.0),),
                                  Padding(padding: EdgeInsets.only(top: 40.0,bottom: 20.0)),
                                  Padding(
                                      padding:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                                      child: Theme(
                                          data: ThemeData(
                                            hintColor: Colors.white,
                                            primaryColor: Colors.deepOrangeAccent,
                                          ),
                                          child: textFields().buildTextFieldIfSenha(
                                              "Usuário",
                                              false,
                                              _controllerUsuario,
                                              "Usúario inválido",
                                              Colors.white))),
                                  Theme(
                                      data: ThemeData(
                                        hintColor: Colors.white,
                                        primaryColor: Colors.deepOrangeAccent,
                                      ),
                                      child: Stack(
                                          alignment: Alignment(1.1, posicionamento),
                                          children: <Widget>[
                                            textFields().buildTextFieldIfSenha(
                                                "Senha",
                                                mostrarSenha,
                                                _controllerSenha,
                                                "Senha inválida",
                                                Colors.white),
                                            new FlatButton(
                                                onPressed: () {
                                                  setState(() {
                                                    if (mostrarSenha) {
                                                      mostrarSenha = false;
                                                    } else {
                                                      mostrarSenha = true;
                                                    }
                                                  });
                                                },
                                                child: mostrarSenha
                                                    ? new Icon(
                                                  Icons.lock_open,
                                                  size: 30.0,
                                                  color: Colors.white,
                                                )
                                                    : new Icon(
                                                  Icons.lock_outline,
                                                  size: 30.0,
                                                  color: Colors.white70,
                                                ))
                                          ])),
                                  Padding(padding: EdgeInsets.only(bottom: 10.0)),
                                  Theme(
                                      data: ThemeData(
                                        hintColor: Colors.white,
                                        primaryColor: Colors.deepOrangeAccent,
                                      ),
                                      child: Stack(
                                          alignment: Alignment(1.1, posicionamento),
                                          children: <Widget>[
                                            textFields().buildTextFieldIfSenha(
                                                "Repetir Senha",
                                                mostrarRepitirSenha,
                                                _controllerRepitirSenha,
                                                "Senha inválida",
                                                Colors.white),
                                            new FlatButton(
                                                onPressed: () {
                                                  setState(() {
                                                    if (mostrarRepitirSenha) {
                                                      mostrarRepitirSenha = false;
                                                    } else {
                                                      mostrarRepitirSenha = true;
                                                    }
                                                  });
                                                },
                                                child: mostrarRepitirSenha
                                                    ? new Icon(
                                                  Icons.lock_open,
                                                  size: 30.0,
                                                  color: Colors.white,
                                                )
                                                    : new Icon(
                                                  Icons.lock_outline,
                                                  size: 30.0,
                                                  color: Colors.white70,
                                                ))
                                          ])),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 50.0, bottom: 10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border:
                                    Border.all(color: Colors.white, width: 2.0)),
                                height: 40.0,
                                width: 200.0,
                                child: RaisedButton(
                                  onPressed: () {
                                    if (formKey.currentState.validate()) {
                                      setState(() {
                                        posicionamento = 0.3;
                                      });

                                      Map<String, String> dados = Map();
                                      dados["login"] = _controllerUsuario.text;
                                      dados["senha"] = _controllerSenha.text;

                                      Connections().estaConectado().then((response) {
                                        if (response) {
                                          Navigator.pop(context);
                                          Navigator.pushReplacementNamed(
                                              context, "/principal");
                                        } else {
                                          Dialogs().confirmacao(
                                              context,
                                              excecoes(1, null, context, null),
                                              false);
                                        }
                                      });
                                    } else {
                                      setState(() {
                                        if (_controllerSenha.text == "") {
                                          posicionamento = -0.6;
                                        } else {
                                          posicionamento = 0.3;
                                        }
                                      });
                                    }
                                  },
                                  child: Text(
                                    "Criar conta",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.0),
                                  ),
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ))))
          ],
        ));
  }
}
