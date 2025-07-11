import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/home_page.dart';
import 'package:get_state_manager/pages/basico/reatividade_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/basico', page: () => ReatividadePage()),
      ],
    );
  }
}
