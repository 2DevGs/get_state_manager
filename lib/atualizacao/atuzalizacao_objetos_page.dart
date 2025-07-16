import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/atualizacao/usuario_model.dart';

class AtuzalizacaoObjetosPage extends StatelessWidget {
  final alunoModel = UsuarioModel(
    id: 1,
    nome: 'Gustavo',
    email: 'dev.gustavoserrano@gmail.com',
  ).obs;

  AtuzalizacaoObjetosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atualização de Objetos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(alunoModel.value.id.toString());
            }),
            Obx(() {
              return Text(alunoModel.value.nome);
            }),
            Obx(() {
              return Text(alunoModel.value.email);
            }),
            ElevatedButton(
              onPressed: () {
                alunoModel.value.nome = 'Gustaf';
                alunoModel.refresh();
              },
              child: const Text('Atualizando com Refresh'),
            ),
            ElevatedButton(
              onPressed: () {
                // Design pattern portotype
                // Estamos criando um novo objeto
                alunoModel.value = alunoModel.value.copyWith(nome: 'Gutaf CopyWith');
              },
              child: const Text('Atualizando com CopyWith'),
            ),
            ElevatedButton(
              onPressed: () {
                alunoModel.update((aluno) {
                  aluno?.nome = 'Gutaf Update';
                });
              },
              child: const Text('Atualizando com Update'),
            ),
          ],
        ),
      ),
    );
  }
}
