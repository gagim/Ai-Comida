import 'package:flutter/material.dart';

String excecoes(int status,String erro,BuildContext context,String tipo){

  String msg;

  if (status != 0) {

    switch (status) {
      case 1:
        msg = "Sem conexão com a internet!";
        break;
      case 200:
        msg = "Error inesperado ao realizar a ação solicitada!";
        break;
      case 204:
        msg = "Você não possui $tipo!";
        break;
      case 403:
        msg = "O login ou senha estão errados!";
        break;
      case 400:
        msg = "Algum parâmetro está errado!";
        break;
      case 404:
        msg = "$tipo não encontrada!";
        break;
      case 405:
        msg = "Algum parametro está errado!";
        break;
      case 415:
        msg = "Não foi enviado nenhum header!";
        break;
      case 500:
        msg = "Algum parâmetro está errado!";
        break;
      case 503:
        msg = "Serviço temporariamente indisponivel!";
        break;
      default:
        msg = "Error inesperado!";
        if (erro != null) print(" Mensagem: " + erro);
        break;
    }

  }else {
    msg = "Serviço fora do ar!";
    Navigator.of(context).pop();
  }
  return msg;
}