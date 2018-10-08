import 'dart:async';
import 'dart:convert';
import 'dart:io';
//import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
//import 'package:sgv_mobile/Controllers/SubControllers/CotacoesControllers.dart';
//import 'package:sgv_mobile/Helpers/Exception.dart';
//import 'package:sgv_mobile/Helpers/FormatarStrings.dart';
//import 'package:sgv_mobile/Helpers/SalvarDadosUsuario.dart';
//import 'package:sgv_mobile/Helpers/Url.dart';
//import 'package:sgv_mobile/Widgets/TextFileds.dart';
import 'package:http/http.dart' as http;

class Dialogs {

  confirmacao(BuildContext context, String msg, bool fecharTudo) {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text('Alerta',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red, fontSize: 20.0)),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    msg,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue, fontSize: 15.0),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: Text('Ok',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                              textAlign: TextAlign.center),
                          color: Colors.blue,
                          onPressed: () {
                            if(fecharTudo){
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                            }else{
                              Navigator.of(context).pop();
                            }
                          },
                        )
                      ])
                ],
              ),
            ));
      },
    );
  }

 /* tokenInvalido(BuildContext context, String msg) {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text('Alerta',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red, fontSize: 20.0)),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    msg,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue, fontSize: 15.0),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: Text('Ok',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                              textAlign: TextAlign.center),
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "/login");
                            Navigator.of(context).pop();
                          },
                        )
                      ])
                ],
              ),
            ));
      },
    );
  }*/

  /*justificativa(BuildContext context, String justificativa) {
    return showDialog<Null>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text("Justificativa",
                style: TextStyle(color: Colors.green),
                textAlign: TextAlign.center),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(justificativa,
                          style: TextStyle(color: Colors.blueAccent))
                    ],
                  )
                ],
              ),
            ));
      },
    );
  }*/

 /* foraDoAr(BuildContext context, String msg, bool login) {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text('Alerta',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red, fontSize: 20.0)),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    msg,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue, fontSize: 15.0),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: Text('Ok',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                              textAlign: TextAlign.center),
                          color: Colors.blue,
                          onPressed: () {

                            if (login){
                              Navigator.pushReplacementNamed(context, "/login");
                            }else{
                              Navigator.of(context).pop();
                              Navigator.pushReplacementNamed(context, "/login");
                            }

                          },
                        ),
                        Padding(padding: EdgeInsets.only(right: 5.0)),
                        FlatButton(
                            child: Center(
                                child: Text('Sair',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                    textAlign: TextAlign.center)),
                            onPressed: () {

                              if (login){
                                Navigator.of(context).pop();
                              }else{
                                Navigator.of(context).pop();
                                Navigator.of(context).pop();
                              }

                            },
                            color: Colors.red),
                      ])
                ],
              ),
            ));
      },
    );
  }*/

  sair(BuildContext context, String msg) {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alerta',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red, fontSize: 20.0)),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  msg,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 15.0),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(right: 10.0)),
                      FlatButton(
                          child: Center(
                              child: Text('Sim',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                  textAlign: TextAlign.end)),
                          onPressed: () {
                            //SalvarDadosUsuario().deletarDados();
                            Navigator.pop(context);
                            Navigator.pushReplacementNamed(context, "/login");
                          },
                          color: Colors.green),
                      Padding(padding: EdgeInsets.only(right: 5.0)),
                      FlatButton(
                          child: Center(
                              child: Text('Não',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          color: Colors.red),
                    ])
              ],
            ),
          ),
        );
      },
    );
  }

  /*aprovarOuReprovar(BuildContext context, String msg, bool reprovar, int id, String numRequisicao) {
    TextEditingController _controllerReprovar = TextEditingController();

    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alerta',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red, fontSize: 20.0)),
          content: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  Text(
                    msg,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue, fontSize: 15.0),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  reprovar
                      ? buildTextFieldReprovarRequisicao(
                          "Justificativa", _controllerReprovar)
                      : Container(),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                            child: Center(
                                child: Text('Sim',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.0),
                                    textAlign: TextAlign.end)),
                            onPressed: () {
                              if (formKey.currentState.validate()) {

                                recusarOuAprovar(id, _controllerReprovar, context,numRequisicao,reprovar);
                              }
                            },
                            color: Colors.green),
                        Padding(padding: EdgeInsets.only(right: 5.0)),
                        FlatButton(
                            child: Center(
                                child: Text('Não',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.0),
                                    textAlign: TextAlign.center)),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            color: Colors.red),
                      ]),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  cotacoes(BuildContext context, dynamic dados, String tipoServico) {

    return showDialog<Null>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Outras Cotações',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueAccent, fontSize: 20.0)),
          content: SingleChildScrollView(
            child: Container(child:  cotacao(dados,tipoServico))
          ),
        );
      },
    );
  }

  void recusarOuAprovar(int id, TextEditingController _controllerReprovar, BuildContext context, String numRequisicao, bool reprovar){

    var now = new DateTime.now();
    var formatter = new DateFormat("dd/MM/yyyy");
    String formatted = formatter.format(now);

    var list =[id];

    Map<String, dynamic> map = Map();
    map["idsTiposServicos"] = list;
    map["data"] = formatted;
    map["justificativa"] =  reprovar ? _controllerReprovar.value.text : null;

    Navigator.of(context).pop();

    carregandoLayout(map, context, numRequisicao, reprovar);
    
  }

  Future<int> mudarRequisicao(Map dados,BuildContext context,String id,bool reprovar) async {

    String token = await SalvarDadosUsuario().getToken();

    var url;
    
    if (reprovar){
      url = Url()+"requisicoes/" + id +"/reprova";
    }else{
      url = Url()+"requisicoes/" + id +"/autoriza";
    }

    print(json.encode(dados));
    
    http.Response response;

    response = await http.put(url, body: json.encode(dados) ,
        headers: {HttpHeaders.authorizationHeader: "Bearer " + token,"Content-Type": "application/json"});

    print(response.body);

      return response.statusCode;

  }

  carregandoLayout(Map dados,BuildContext context,String id,bool reprovar) {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: FutureBuilder(
              future: mudarRequisicao(dados, context, id, reprovar),
              builder: (context, snapShot){
                switch(snapShot.connectionState){
                  case ConnectionState.waiting:
                  case ConnectionState.none:
                    return Container(
                      width: 50.0,
                      height: 50.0,
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                        strokeWidth: 5.0,
                      ),
                    );

                  default:
                    if(snapShot.hasError){
                      return resultado(context, snapShot,id);
                    }else{
                      return resultado(context, snapShot,id);
                    }
                }
              }
          )
        );
      },
    );
  }

  Widget resultado(context, snapShot,numRequisicao){

  if (snapShot.data == 200) {

    return Container(
        height: 200.0,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Text("Alterado com Sucesso!",
                  style: TextStyle(
                      color: Colors.blue, fontSize: 20.0)),

              Container(
                  width: 100.0,
                  child: FlatButton(
                      child: Center(
                          child: Text('Ok',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                              textAlign: TextAlign.end)),
                      onPressed: () {

                        Navigator.of(context).pop();
                        Navigator.of(context).pop();

                      },
                      color: Colors.red))
            ]));

  }else {

    return Container(
      height: 120.0,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Text(excecoes(snapShot.data, null, context,null),
              style: TextStyle(
                  color: Colors.blue, fontSize: 20.0),textAlign: TextAlign.center,),

          Padding(padding: EdgeInsets.only(bottom: 10.0)),

          Container(
            width: 100.0,
              child: FlatButton(
              child: Center(
                  child: Text('Ok',
                      style: TextStyle(
                          color: Colors.white, fontSize: 20.0),
                      textAlign: TextAlign.end)),
              onPressed: () {

                Navigator.of(context).pop();

                print(snapShot.data);
              },
              color: Colors.red))

        ]));

  }

  }

  anexosPrints(BuildContext context, List<dynamic> anexos, int id) {

    dynamic listaImagens;

    for(int l = 0; l < anexos.length ; l++){
      listaImagens = anexos[l];
    }

  Widget anexo(context, index) {

    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
      Text("Anexos",style: TextStyle(fontWeight: FontWeight.bold),),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: 140.0,
              padding: EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent, width: 1.5),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Text(
                formatarImagemName(listaImagens["nome"].toString().toLowerCase()),
                style: TextStyle(color: Colors.blue, fontSize: 13.0),
                textAlign: TextAlign.center,
              )),
          Container(
              child: IconButton(
                  icon: Icon(Icons.filter,
                      color: Colors
                          .blue),
                  onPressed: () {

                    carregandoImagem(context, id, listaImagens["id"]);

                  })
          ),
          Padding(padding: EdgeInsets.only(bottom: 5.0)),
        ],
      )
    ]);
  }

  Widget listAnexos() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: anexos.length,
      itemBuilder: anexo,
    );
  }

    return showDialog<Null>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
            content: Container(
              width: 200.0,
                height: 60.0 * anexos.length,
                child: listAnexos()
            )
        );
      },
    );
  }

  carregandoImagem(BuildContext context, int idServico, int idAnexo) {

    return showDialog<Null>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            content: FutureBuilder(
                future: buscarImagem(context, idServico, idAnexo),
                builder: (context, snapShot){
                  switch(snapShot.connectionState){
                    case ConnectionState.waiting:
                    case ConnectionState.none:
                      return Container(
                        width: 200.0,
                        height: 200.0,
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                          strokeWidth: 5.0,
                        ),
                      );

                    default:
                      if(snapShot.hasError){
                        return Container();
                      }else{
                        return mostrarImagem(context, snapShot);
                      }
                  }
                }
            )
        );
      },
    );
  }

  Future<Map> buscarImagem(BuildContext context,int idServico, int idAnexo) async {

    String token = await SalvarDadosUsuario().getToken();

    var url = Url()+"anexos/"+idServico.toString()+"/"+idAnexo.toString();

    http.Response response;

    response = await http.get(url, headers: {"Content-Type": "application/json",
          HttpHeaders.authorizationHeader: "Bearer " + token});

    if (response.statusCode == 200) {

      return json.decode(response.body);

    } else {
      Navigator.of(context).pop();
      Dialogs().confirmacao(context, excecoes(response.statusCode, response.body, context,null),false);
      return json.decode(response.body);
    }

  }

  Widget mostrarImagem(BuildContext context, AsyncSnapshot snapShot) {

    List<String> byte = snapShot.data["imagem"].toString().split(",");

    return Image.memory(Base64Decoder().convert(byte[1]), fit: BoxFit.fill,
        height: 200.0, width: 200.0);

  }

  detalhesCiaAerea(BuildContext context, dynamic dados, String numeroVoo) {

    String partindoDe = dados["aeroportoOrigem"]["sigla"] + " -> " + dados["aeroportoOrigem"]["nome"] + " em " + dados["aeroportoOrigem"]["nomeMunicipio"];

    String chegandoA = dados["aeroportoDestino"]["sigla"]+ " -> " + dados["aeroportoDestino"]["nome"] + " em " + dados["aeroportoDestino"]["nomeMunicipio"];

    return showDialog<Null>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text('Sobre o Vôo $numeroVoo',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueAccent, fontSize: 17.0)),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[

                  Text("Partindo de:",style: TextStyle(color: Colors.black,fontSize: 13.5,fontWeight: FontWeight.bold),),
                  Text("$partindoDe",style: TextStyle(color: Colors.blue,fontSize: 12.5,fontWeight: FontWeight.bold),),

                  Padding(padding: EdgeInsets.only(bottom: 5.0)),

                  Text("Chegando a:",style: TextStyle(color: Colors.black,fontSize: 13.5,fontWeight: FontWeight.bold),),
                  Text("$chegandoA",style: TextStyle(color: Colors.blue,fontSize: 12.5,fontWeight: FontWeight.bold),),

                ],
              ),
            ));
      },
    );
  }*/

}