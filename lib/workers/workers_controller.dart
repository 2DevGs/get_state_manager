import 'package:get/get.dart';

class WorkersController extends GetxController {
  final _workers = <Worker>[];
  final _nome = 'Gustvo Dias'.obs;

  String get nome => _nome.value;

  @override
  void onInit() {
    // final everWorker = ever(_nome, (nome) {
    //     print('Executando o worker ever');
    //     print(nome);
    //   },
    //   cancelOnError: true,
    //   condition: () => _nome.value == 'Gustavo Dias',
    // );
    // _workers.add(everWorker);

    // final onceWorker = once<String>(_nome, (nome) {
    //   print('Executando o worker once');
    //   print(nome);
    // });
    // _workers.add(onceWorker);

    final intervalWorker = interval<String>(_nome, (nome) {
      print('##############################WORKER INTERVAL #############################');
      print('############################## $nome #############################');
    }, time: const Duration(seconds: 2));
    _workers.add((intervalWorker));

    super.onInit();
  }

  @override
  void onClose() {
    for (var worker in _workers) {
      worker();
    }
    super.onClose();
  }

  void alterarNome(String value) {
    _nome(value);
  }
}
