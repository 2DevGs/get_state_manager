import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TipoReativosPage extends StatelessWidget {
  final nome = RxString('Gustavo Dias');
  final isAluno = RxBool(true);
  final qtdAlunos = RxInt(2);
  final valorCurso = RxDouble(1497.52);
  final jornadas = RxList([
    'Jornada GetX',
    'Jornada ADF',
    'Jornada Dart',
  ]);
  final aluno = RxMap({
    'id': 2000,
    'nome': 'Gustavo Serrano',
    'tipo': 'Aluno',
  });

  TipoReativosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Reativos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              debugPrint('Montando ID do aludno');
              return Text('Id do aluno ${aluno['id']}');
            }),
            Obx(() {
              debugPrint('Montando NOME do aludno');
              return Text('Nome do aluno ${aluno['nome']}');
            }),
            Obx(() {
              return Column(
                children: jornadas.map(Text.new).toList(),
              );
            }),
            ElevatedButton(
              onPressed: () {
                aluno['id'] = 50;
              },
              child: const Text('Alterar ID'),
            ),
            ElevatedButton(
              onPressed: () {
                jornadas.assign('Jornada Flutter');
              },
              child: const Text('Adicionar Jornada'),
            ),
          ],
        ),
      ),
    );
  }
}
