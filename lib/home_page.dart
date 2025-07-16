import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.toNamed('/basico');
              },
              child: const Text('Basico reatividade'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/tiposReativos');
              },
              child: const Text('Tipos Reativos'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/tiposReativosGenericos');
              },
              child: const Text('Tipos Reativos Genericos'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/tiposReativosGenericosNullos');
              },
              child: const Text('Tipos Reativos Genericos Nullos'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/tiposObs');
              },
              child: const Text('Tipos Obs'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/atualizacaoObjetos');
              },
              child: const Text('Atualização Objetos'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/controllers');
              },
              child: const Text('Controllers'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/getxWidget');
              },
              child: const Text('Getx Widget'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/localStateWidget');
              },
              child: const Text('Local State Widget'),
            ),
          ],
        ),
      ),
    );
  }
}
