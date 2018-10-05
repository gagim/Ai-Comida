import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Tela Principal",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app,color: Colors.white,),
              onPressed: (){
                Navigator.pushReplacementNamed(context, "/login");
          })
        ],
      ),
      body: Stack(children: <Widget>[

        Image.asset("img/back_principal.jpg",fit: BoxFit.fill,
          height: 1000.0,width: 1000.0,),

      ],)
    );
  }
}
