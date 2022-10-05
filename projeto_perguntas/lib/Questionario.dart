import 'package:flutter/material.dart';
import 'Questao.dart';
import 'Resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quantoResponder;

  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quantoResponder,
    super.key,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada ? perguntas[perguntaSelecionada].cast()['respostas'] as List<Map<String, Object>> : [];
    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((resp) {
          return Resposta(
              resp['texto'] as String,
              () => quantoResponder(
                    int.parse(resp['pontuacao'].toString()),
                  ));
        }).toList(),
      ],
    );
  }
}
