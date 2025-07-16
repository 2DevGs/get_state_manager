import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/controllers/getxcontroller_example/controller.dart';

class GetxControllerExamplePage extends StatefulWidget {
  const GetxControllerExamplePage({super.key});

  @override
  State<GetxControllerExamplePage> createState() =>
      _GetxControllerExamplePageState();
}

class _GetxControllerExamplePageState extends State<GetxControllerExamplePage> {
  @override
  void dispose() {
    print('dispose GetxControllerExamplePage');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Build GetxControllerExamplePage');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Cotnroller'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(Get.find<Controller>().nome);
            }),
            ElevatedButton(
              onPressed: () {
                Get.find<Controller>().alterarDados();
              },
              child: const Text('Alterar Dados'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.reload<Controller>();
                setState(() {
                });
              },
              child: const Text('Re-carregar Controller'),
            ),
          ],
        ),
      ),
    );
  }
}
