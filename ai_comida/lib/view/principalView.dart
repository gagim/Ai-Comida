import 'package:Ai_Comida/helper/Dialogs.dart';
import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  bool mostrar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:Image.asset("img/logoBranca.png",
              fit: BoxFit.fill, height: 25.0),
          centerTitle: true,
          backgroundColor: Colors.red,
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
        ),
        body: Stack(
          children: <Widget>[
            Image.asset(
              "img/back_principal.jpg",
              fit: BoxFit.fill,
              height: 1000.0,
              width: 1000.0,
            ),
            ListView.builder(
                itemCount: 1, itemBuilder: teste, padding: EdgeInsets.all(5.0))
          ],
        ),
        floatingActionButton: mostrar ? FloatingActionButton(
            backgroundColor: Colors.red,
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {}) : Container());
  }

  Widget teste(c, i) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/detalhes");
        },
        child: Column(
          children: <Widget>[
            Container(
                height: 100.0,
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.black.withOpacity(0.3)),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: ExactAssetImage("img/teste.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5.0)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Nome: Pizzaria Sabores do Sul",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Fone: (61) 3379-5790",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Ende: Qno 17 Conjunto 04 Loja 16",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.restaurant,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            Icon(
                              Icons.directions_run,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            Icon(
                              Icons.motorcycle,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            Icon(
                              Icons.attach_money,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            Icon(
                              Icons.credit_card,
                              color: Colors.white,
                              size: 35.0,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )),
            Padding(padding: EdgeInsets.only(bottom: 5.0))
          ],
        ));
  }
}
