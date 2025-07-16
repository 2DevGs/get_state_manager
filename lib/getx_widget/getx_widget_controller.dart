
import 'package:get/get.dart';

class GetxWidgetController extends GetxController {
  
  final _nome = 'Gustavo Dias'.obs;

  String get nome => _nome.value;

  void alterarNome() {
    _nome('Gustaf Serrano');
  }

}