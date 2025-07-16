import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/tipos/model/aluno.dart';

class TiposOBSPage extends StatelessWidget {
  final nome = 'Gustavo Dias'.obs;
  final isAluno = true.obs;
  final qtdAlunos = 2.obs;
  final valorCurso = 1497.52.obs;
  final jornadas = [
    'Jornada GetX',
    'Jornada ADF',
    'Jornada Dart',
  ].obs;
  final aluno = <String, dynamic>{
    'id': 2000,
    'nome': 'Gustavo Serrano',
    'tipo': 'Aluno',
  }.obs;

  final alunoModel = Aluno(
    id: 20000,
    nome: 'Gustavo Dias',
    email: 'dev.gustavoserrano@gmail.com',
    curso: 'Jornada GetX',
  ).obs;

  // variáveis nullas não podem ser instanciadas diretamente com null, se ela pode recebe nullo deve usar o Rxn e Rxn{type}
  // final x = null.obs;

  TiposOBSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Obs Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              debugPrint('Montando ID do aluno');
              return Text('Id do aluno ${aluno['id']}');
            }),
            Obx(() {
              debugPrint('Montando NOME do aluno');
              return Text('Nome do aluno ${aluno['nome']}');
            }),
            Obx(() {
              debugPrint('Montando ID do aluno Model');
              return Text('Id do aluno Model ${alunoModel.value.id}');
            }),
            Obx(() {
              debugPrint('Montando NOME do aluno Model');
              return Text('Nome do aluno Model ${alunoModel.value.nome}');
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
            ElevatedButton(
              onPressed: () {
                // alunoModel.value = Aluno(
                //   id: 10,
                //   nome: 'Gu',
                //   email: 'NONE',
                //   curso: 'Jornada ADF',
                // );
                alunoModel(Aluno(
                  id: 10,
                  nome: 'Gu',
                  email: 'NONE',
                  curso: 'Jornada ADF',
                ));
              },
              child: const Text('Aterar AlunoModel'),
            ),
          ],
        ),
      ),
    );
  }
}
