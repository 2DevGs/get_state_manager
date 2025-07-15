import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/tipos/model/aluno.dart';

class TipoReativosGenericosPage extends StatelessWidget {
  final nome = Rx<String>('Gustavo Dias');
  final isAluno = Rx<bool>(true);
  final qtdAlunos = Rx<int>(2);
  final valorCurso = Rx<double>(1497.52);
  final jornadas = Rx<List<String>>([
    'Jornada GetX',
    'Jornada ADF',
    'Jornada Dart',
  ]);
  final aluno = Rx<Map<String, dynamic>>({
    'id': 2000,
    'nome': 'Gustavo Serrano',
    'tipo': 'Aluno',
  });

  final alunoModel = Rx<Aluno>(Aluno(
    id: 20000,
    nome: 'Gustavo Dias',
    email: 'dev.gustavoserrano@gmail.com',
    curso: 'Jornada GetX',
  ));

  TipoReativosGenericosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Reativos Genericos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              debugPrint('Montando ID do aluno');
              return Text('Id do aluno ${aluno.value['id']}');
            }),
            Obx(() {
              debugPrint('Montando NOME do aluno');
              return Text('Nome do aluno ${aluno.value['nome']}');
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
                children: jornadas.value.map(Text.new).toList(),
              );
            }),
            ElevatedButton(
              onPressed: () {
                aluno.value['id'] = 50;
                aluno.refresh();
              },
              child: const Text('Alterar ID'),
            ),
            ElevatedButton(
              onPressed: () {
                jornadas.value.assign('Jornada Flutter');
                jornadas.refresh();
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
