import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/workers/workers_controller.dart';

class WorkersPage extends StatefulWidget {
  const WorkersPage({super.key});

  @override
  State<WorkersPage> createState() => _WorkersPageState();
}

class _WorkersPageState extends State<WorkersPage> {
  final controller = Get.find<WorkersController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workers Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: controller.alterarNome,
            ),
            Obx(() {
              return Text(controller.nome);
            }),
          ],
        ),
      ),
    );
  }
}
