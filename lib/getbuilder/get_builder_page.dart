import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/getbuilder/get_builder_controller.dart';

class GetBuilderPage extends StatelessWidget {
  const GetBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Builder'),
      ),
      body: Center(
        child: GetBuilder<GetBuilderController>(builder: (controller) {
          debugPrint('######## GetBuilder Geral########################');
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(controller.nome),
              GetBuilder<GetBuilderController>(
                id: 'contador',
                builder: (controller) {
                  debugPrint('######## GetBuilder Contador ########################');
                  return Text(controller.contador.toString());
                },
              ),
              ElevatedButton(
                onPressed: () {
                  controller.alterarNome();
                },
                child: const Text('Alterar nome'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: const Text('Increment'),
              ),
            ],
          );
        }),
      ),
    );
  }
}
