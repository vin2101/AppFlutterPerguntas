import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao; 

  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if(pontuacao<8) {
      return 'Parabéns';
    } else if (pontuacao < 15)
    {
      return 'Bemmm';
    } else if (pontuacao < 25)
    {
      return ('Monstro sagrado');
    } else {
        return 'Lendário';
      }
  }

  @override
  Widget build(BuildContext context) {
   return Column(
    mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Center(
                child: Text(fraseResultado,
                style: TextStyle(fontSize: 28)
                ),
                ),
                TextButton(
                  child: Text('Reiniciar?'),
                  style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white),
                  onPressed: reiniciarQuestionario,
              ),                       
     ],
   );
} 
}