import 'package:flutter/material.dart';

class textFields{
  Widget buildTextFieldIfSenha(String label, bool ifSenha, TextEditingController controller,String retorno,Color color) {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: controller,

      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),

      validator: (value) {
        if (value.isEmpty) {
          return retorno;
        }
      },
      autofocus: false,

      autocorrect: true,

      style: TextStyle(color: color, fontSize: 15.0),
      obscureText: ifSenha,
    );
  }
}