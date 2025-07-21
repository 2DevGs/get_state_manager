import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstRebuildPage extends StatefulWidget {
  const FirstRebuildPage({super.key});

  @override
  State<FirstRebuildPage> createState() => _FirstRebuildPageState();
}

class _FirstRebuildPageState extends State<FirstRebuildPage> {
  final isAluno = false.obs;

  @override
  void initState() {
    super.initState();
    isAluno.firstRebuild = false;
    ever<bool>(isAluno, (isAluno) {
      Get.snackbar('Ever', 'É Aluno $isAluno');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Rebuild'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Switch(
                value: isAluno.value,
                onChanged: (_) {},
              );
            }),
            ElevatedButton(
              onPressed: () {
                isAluno(true);
              },
              child: const Text('Set True'),
            ),
            ElevatedButton(
              onPressed: () {
                isAluno(false);
              },
              child: const Text('Set False'),
            ),
          ],
        ),
      ),
    );
  }
}
