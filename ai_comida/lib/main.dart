import 'package:Ai_Comida/view/loginView.dart';
import 'package:Ai_Comida/view/principalView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){

   runApp(
     MaterialApp(

      routes: {
        "/login": (context) => Login(),
        "/principal": (context) => Principal(),
      },

      home: Login(),

      debugShowCheckedModeBanner: false,

      title: "Ai Comida",

     )
   );

  });

}
