import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'atualizacao/atuzalizacao_objetos_page.dart';
import 'basico/reatividade_page.dart';
import 'controllers/controllers_home_page.dart';
import 'controllers/getxcontroller_example/controller.dart';
import 'controllers/getxcontroller_example/getx_controller_example_page.dart';
import 'firstRebuild/first_rebuild_page.dart';
import 'getx_widget/getx_widget_controller.dart';
import 'getx_widget/getx_widget_page.dart';
import 'home_page.dart';
import 'local_state_widget/local_state_widget_page.dart';
import 'tipos/tipo_obs_page.dart';
import 'tipos/tipo_reativos_genericos_nullos_page.dart';
import 'tipos/tipo_reativos_genericos_page.dart';
import 'tipos/tipo_reativos_page.dart';
import 'workers/workers_controller.dart';
import 'workers/workers_page.dart';

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
        GetPage(
          name: '/localStateWidget',
          page: () => const LocalStateWidgetPage(),
        ),
        GetPage(
          name: '/workers',
          binding: BindingsBuilder.put(
            () => WorkersController(),
          ),
          page: () => const WorkersPage(),
        ),
        GetPage(
          name: '/firstRebuild',
          page: () => FirstRebuildPage(),
        ),
      ],
    );
  }
}
