//import 'dart:async';
//import 'package:Ai_Comida/helper/Connections.dart';
import 'package:Ai_Comida/helper/Dialogs.dart';
//import 'package:Ai_Comida/helper/Exeptions.dart';
//import 'package:Ai_Comida/helper/SalvarDadosUsuario.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  TelaPrincipalState createState() {
    return new TelaPrincipalState();
  }
}

class TelaPrincipalState extends State<TelaPrincipal> {
  bool isAutorizador = false, financeiro = false;

  /*@override
  void initState() {
    super.initState();

    Connections().estaConectado().then((response){

      if(response){
        buscarDados().then((data) {
          setState(() {
          });
        });
      }else{
        Dialogs().confirmacao(context, excecoes(1, null, context,null),false);
      }

    });

  }*/

  /*Future<Null> buscarDados() async {
    String perfil = await SalvarDadosUsuario().getPerfil() == null
        ? ""
        : await SalvarDadosUsuario().getPerfil();

    financeiro = perfil.contains("GESTOR_FINANCEIRO");

    isAutorizador = await SalvarDadosUsuario().getAutorizador();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: () {
                Dialogs().sair(context, "Deseja Sair?");
                //Navigator.pushReplacementNamed(context, "/login");
              })
        ],
        title:
            Image.asset("img/logoBranca.png", fit: BoxFit.fill, height: 25.0),
        centerTitle: true,
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Image.asset(
              "img/back_principal.jpg",
              fit: BoxFit.fill,
              height: 1000.0,
              width: 1000.0,
            ),
            Padding(padding: EdgeInsets.all(10.0), child: menu())
          ],
        ),
      ),
    );
  }

  void exit() {
    Dialogs()
        .sair(context, "Seus dados de login serão perdidos, deseja deslogar?");
  }

  void buscarRota(String rota) {
    Navigator.pushNamed(context, rota);
  }

  Widget menu() {
    return isAutorizador == true || financeiro == true
        ? GridView.count(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(15.0),
            crossAxisCount: 2,
            children: <Widget>[
              box(
                  Icons.check_circle,
                  isAutorizador == true
                      ? "Minhas Autorizações"
                      : "Meus Pagamentos",
                  "/telaMinhasAutorizacoes",
                  false),

              //box(Icons.search, "Consultar Solicitações", "/telaBuscarViagem", false),

              box(Icons.question_answer, "Minhas Solicitações",
                  "/telaMinhasSolicitacoes", false),

              box(Icons.person, "Contatos", "/telaContatos", false),

              box(Icons.build, "Configurações", "/telaConfiguracoes", false),
            ],
          )
        : GridView.count(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(15.0),
            crossAxisCount: 2,
            children: <Widget>[
              //box(Icons.search, "Consultar Uma Viagem", "/telaBuscarViagem", false),

              box(Icons.restaurant_menu, "Fazer Pedido", "/criarPedido", false),

              box(Icons.build, "Configurações da Conta", "/telaConfiguracoes",
                  false),
            ],
          );
  }

  /*Widget box(IconData icone, String titulo, String rota, bool sair) {
    return Card(
        elevation: 8.0,
        child: GestureDetector(
          child: Container(
              padding: EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    icone,
                    color: Colors.blue,
                    size: 80.0,
                  ),
                  Text(
                    titulo,
                    style: TextStyle(color: Colors.lightBlue,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              )
          ),
          onTap: () {
            sair ? exit() : buscarRota(rota);
          },
        )
    );
  }*/

  Widget box(IconData icone, String titulo, String rota, bool sair) {
    return Container(
        padding: EdgeInsets.all(4.0),
        child: GestureDetector(
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.white, width: 1.0),
                      left: BorderSide(color: Colors.white, width: 1.0),
                      bottom: BorderSide(color: Colors.white, width: 3.0),
                      right: BorderSide(color: Colors.white, width: 3.0)),
                  color: Colors.black12.withOpacity(0.1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    icone,
                    color: Colors.white,
                    size: 80.0,
                  ),
                  Text(
                    titulo,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              )),
          onTap: () {
            sair ? exit() : buscarRota(rota);
          },
        ));
  }
}
