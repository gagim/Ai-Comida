import 'package:flutter/material.dart';

class Detalhes extends StatefulWidget {
  @override
  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {

  bool mostrar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset("img/logoBranca.png",
              fit: BoxFit.fill, height: 25.0),
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
            Padding(padding: EdgeInsets.all(5.0),child: Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.black.withOpacity(0.3)),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Row(
                        children: <Widget>[
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: ExactAssetImage("img/back_principal.jpg"),
                                    fit: BoxFit.cover)),
                          ),

                          Padding(padding: EdgeInsets.only(left: 5.0)),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Nome: Pizzaria Sabores do Sul",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 11.0)),
                              Text("Fone: (61) 3379-5790",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 11.0)),
                              Text("Ende: Qno 17 Conjunto 04 Loja 16",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 11.0)),
                            ],
                          )
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.restaurant,color: Colors.white,size: 35.0,),
                          Icon(Icons.directions_run,color: Colors.white,size: 35.0,),
                          Icon(Icons.motorcycle,color: Colors.white,size: 35.0,),
                          Icon(Icons.attach_money,color: Colors.white,size: 35.0,),
                          Icon(Icons.credit_card,color: Colors.white,size: 35.0,),
                        ],),

                      Padding(padding: EdgeInsets.only(top: 5.0,bottom: 5.0),
                        child: Text("Cardápio",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)),
                      ),

                      Container(
                        height: 25 + (75.0 * 2),
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.all(Radius.circular(10.0))),
                          child:
                            ListView.builder(
                                itemCount: 2,
                                itemBuilder: teste,
                                padding: EdgeInsets.all(5.0)
                            )
                      ),

                    ],

                  ),
                )))

          ],
        ),
    floatingActionButton: mostrar ? FloatingActionButton(
      backgroundColor: Colors.red,
        child: Icon(Icons.map,
          color: Colors.white,),
        onPressed: (){

    }) : Container());
  }

  Widget teste(c, i) {
    return GestureDetector(
        onTap: (){
         // Navigator.pushNamed(context, "/detalhes");
        },
        child: Container(
          padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.red, width: 1.0)),
            ),
            child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
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
                      "Nome: Pizza Calabresa",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: 11.0),
                    ),
                    Text(
                      "Tamanho: Grande",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: 11.0),
                    ),
                    Text(
                      "Tempo médio de preparo: 30min",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: 11.0),
                    ),
                    Text(
                      "Preço: 25,00",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: 11.0),
                    ),
                  ],
                )
              ],
            ),
          ],
        )));
  }
}
