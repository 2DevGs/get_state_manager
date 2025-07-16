import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/controllers/getxcontroller_example/controller.dart';
import 'package:get_state_manager/getx_widget/getx_widget_page.dart';

import 'atualizacao/atuzalizacao_objetos_page.dart';
import 'basico/reatividade_page.dart';
import 'controllers/controllers_home_page.dart';
import 'controllers/getxcontroller_example/getx_controller_example_page.dart';
import 'getx_widget/getx_widget_controller.dart';
import 'home_page.dart';
import 'tipos/tipo_obs_page.dart';
import 'tipos/tipo_reativos_genericos_nullos_page.dart';
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
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/basico',
          page: () => ReatividadePage(),
        ),
        GetPage(
          name: '/tiposReativos',
          page: () => TipoReativosPage(),
        ),
        GetPage(
            name: '/tiposReativosGenericos',
            page: () => TipoReativosGenericosPage()),
        GetPage(
          name: '/tiposReativosGenericosNullos',
          page: () => TipoReativosGenericosNullosPage(),
        ),
        GetPage(
          name: '/tiposObs',
          page: () => TiposOBSPage(),
        ),
        GetPage(
          name: '/atualizacaoObjetos',
          page: () => AtuzalizacaoObjetosPage(),
        ),
        GetPage(
          name: '/controllers',
          page: () => const ControllersHomePage(),
          children: [
            GetPage(
              name: '/getxcontroller',
              binding: BindingsBuilder(
                () {
                  // Get.put(Controller());
                  Get.lazyPut(() => Controller());
                },
              ),
              page: () => const GetxControllerExamplePage(),
            ),
          ],
        ),
        GetPage(
          name: '/getxWidget',
          page: () => const GetxWidgetPage(),
          binding: BindingsBuilder.put(
            () => GetxWidgetController(),
          ),
        ),
      ],
    );
  }
}
