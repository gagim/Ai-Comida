import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class SalvarDadosUsuario {

  String chaveToken = "tokenUsuarioLogado";
  String chaveAutorizado = "autorizadorLogado";
  String chavePerfilAutorizado = "perfilLogado";

  void salvarDados(bool autorizador,String perfil,String token) async {

    SharedPreferences editor = await SharedPreferences.getInstance();

    await editor.setBool(chaveAutorizado,autorizador);
    await editor.setString(chavePerfilAutorizado,perfil);
    await editor.setString(chaveToken,token);

  }

  void deletarDados() async{

    SharedPreferences editor = await SharedPreferences.getInstance();

    await editor.clear();

  }

  Future<String> getToken() async{
    SharedPreferences editor = await SharedPreferences.getInstance();
    return editor.getString(chaveToken);
  }

  Future<String> getPerfil() async{
    SharedPreferences editor = await SharedPreferences.getInstance();
    return editor.getString(chavePerfilAutorizado);
  }

  Future<bool> getAutorizador() async{
    SharedPreferences editor = await SharedPreferences.getInstance();
    return editor.getBool(chaveAutorizado);
  }

}