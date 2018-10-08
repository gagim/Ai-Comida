
import 'package:Ai_Comida/widgets/textFields.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool telaLogin = false,mostrarSenha = true;

  double posicionamento = 0.3;

  TextEditingController _controllerUsuario = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        alignment: Alignment(0.0, 0.0),
        children: <Widget>[

          Image.asset("img/back.jpg",fit: BoxFit.fill,
              height: 1000.0,width: 1000.0,),

         SingleChildScrollView(
           padding:EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
         child: Form(
           key: formKey,
             child: Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[

             /*Image.asset("img/logo.png",fit: BoxFit.fill,
               height: 100.0),*/

             Padding(padding: EdgeInsets.only(top: 40.0,bottom: 40.0)),

             Container(
               //color: Colors.grey.withOpacity(0.1),
               child: Column(children: <Widget>[
               Padding(
                   padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                   child:Theme(
                       data: ThemeData(
                         hintColor: Colors.white,
                         primaryColor: Colors.white,
                         primaryColorDark: Colors.white
                       ),
                       child: textFields().buildTextFieldIfSenha("Usuário", false, _controllerUsuario,"Usúario inválido",Colors.white)
                   )
               ),

               Theme(
                   data: ThemeData(
                     hintColor: Colors.white,
                     primaryColor: Colors.white,
                   ),
                   child: Stack(
                       alignment: Alignment(1.1, posicionamento),
                       children: <Widget>[
                         textFields().buildTextFieldIfSenha("Senha", mostrarSenha, _controllerSenha,"Senha inválida",Colors.white),
                         new FlatButton(
                             onPressed: () {
                               setState(() {
                                 if(mostrarSenha){
                                   mostrarSenha = false;
                                 }else{
                                   mostrarSenha = true;
                                 }
                               });
                             },
                             child: mostrarSenha ? new Icon(Icons.visibility,size: 30.0,color: Colors.white,) :
                             new Icon(Icons.visibility_off,size: 30.0,color: Colors.white70,))
                       ]
                   )
               ),

             ],),),

             Padding(
               padding: EdgeInsets.only(top: 50.0, bottom: 10.0),
               child: Container(
                 height: 40.0,
                 width: 200.0,
                 child: RaisedButton(
                   onPressed: () {

                     if (formKey.currentState.validate()){

                       setState(() {
                         posicionamento = 0.3;
                       });

                       Map<String, String> dados = Map();
                       dados["login"] = _controllerUsuario.text;
                       dados["senha"] = _controllerSenha.text;

                       Navigator.pushReplacementNamed(context, "/principal");

                       /*Connections().estaConectado().then((response){

                         if(response){
                           getTokenUsuario(dados);
                         }else{
                           Dialogs().confirmacao(context, excecoes(1, null, context,null),false);
                         }

                       });*/

                     }else{
                       setState(() {
                         if(_controllerSenha.text == ""){
                           posicionamento = -0.6;
                         }else{
                           posicionamento = 0.3;
                         }
                       });
                     }

                   },

                   child: Text("Acessar", style: TextStyle(color: Colors.white, fontSize: 20.0),), color: Colors.redAccent,

                 ),
               ),
             ),

             ],
           ))
         )
         )
           ],),
         );
  }
}
