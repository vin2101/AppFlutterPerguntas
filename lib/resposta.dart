import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
final String textoResposta;
final void Function () quandoSelecionada;

Resposta(this.textoResposta, this.quandoSelecionada);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(4),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue),
        onPressed: quandoSelecionada,
        child: Text(textoResposta, style: TextStyle(color: Colors.white))
        ),
    );
  }
}