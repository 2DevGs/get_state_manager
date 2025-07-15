import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'basico/reatividade_page.dart';
import 'home_page.dart';
import 'tipos/tipo_reativos_genericos_page.dart';
import 'tipos/tipo_reativos_page.dart';

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
        GetPage(name: '/tiposReativos', page: () => TipoReativosPage()),
        GetPage(name: '/tiposReativosGenericos', page: () => TipoReativosGenericosPage()),
      ],
    );
  }
}
