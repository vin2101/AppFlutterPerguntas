import 'package:teste/resultado.dart';
import './questionario.dart';
import 'package:flutter/material.dart';
main () => runApp(PerguntaApp());

class _PerguntaAppState extends State <PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
        {
          'texto': 'Qual é a sua cor favorita?',
          'respostas': [
            {'texto': 'Verde', 'pontuacao' : 10},
            {'texto': 'Vermelho', 'pontuacao' : 7},
            {'texto': 'Preto', 'pontuacao' : 4},
            {'texto': 'Amarelo', 'pontuacao' : 2}
            ],       
        },
        {
          'texto': 'Qual é a seu animal favorito?',
          'respostas': [
             {'texto':'Cachorro', 'pontuacao' : 9},
             {'texto':'Peixe','pontuacao' : 5 },
             {'texto':'Gato', 'pontuacao' : 3},
             {'texto':'Hamster', 'pontuacao' : 7}
             ],       
        },
        {
          'texto': 'Qual é seu esporte favorito?',
          'respostas': [
            {'texto':'Futevôlei','pontuacao' : 10},
            {'texto':'Beach Tennis',  'pontuacao': 8}, 
            {'texto':'Boxe', 'pontuacao': 7}, 
            {'texto':'Corrida', 'pontuacao': 5}],       
        }
      ];

  void _responder(int pontuacao) { 
    print('Pergunta Respondida $_perguntaSelecionada');
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });   
    print(_pontuacaoTotal);
  }

void _reiniciarQuestionario() {
  setState(() {
    _perguntaSelecionada = 0;
    _pontuacaoTotal = 0;
  });
}

bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

     @override
  Widget build(BuildContext context) {


    // for (String textoResp in respostas) {
    //   respostas.add(Resposta(textoResp, _responder));
    // }

      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas do Z'), 
            ),
            body: temPerguntaSelecionada 
              ? Questionario(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              responder: _responder,
              ) 
              : Resultado(_pontuacaoTotal, _reiniciarQuestionario),                                                 
                // ElevatedButton(onPressed: () {print('Resposta 1 foi selecionada');}, child: Text('Resposta 1')),
                // ElevatedButton(onPressed: _responder, child: Text('Resposta 2')),
                // ElevatedButton(onPressed: () => print('Resposta 3 foi selecionada'), child: Text('Resposta 3')),
                // ElevatedButton(onPressed: _responder, child: Text('Resposta 3')),
          
        ),
      );
    }
}

class PerguntaApp extends StatefulWidget { 

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}