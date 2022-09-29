import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  final List<String> perguntas = [
    'Qual é a sua cor favorita ?',
    'Qual é o seu animal favorito ?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            TextButton(
              child: Text('Resposta 1'),
              onPressed: null,
            ),
            TextButton(
              child: Text('Resposta 2'),
              onPressed: null,
            ),
            TextButton(
              child: Text('Resposta 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
