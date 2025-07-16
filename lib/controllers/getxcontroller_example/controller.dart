
import 'package:get/get.dart';

class Controller extends GetxController {

  final _nome = 'Gustavo Dias'.obs;

  String get nome => _nome.value;
  
  @override
  void onInit() {
    // await 2.seconds.delay();
    print('onInit');
    super.onInit();
  }

  @override
  void onReady() {
    print('onReady');
    super.onReady();
  }

  @override
  void onClose() {
    print('onClose');
    super.onClose();
  }

  void alterarDados() {
    _nome('Gustaf Dias');
  }

}