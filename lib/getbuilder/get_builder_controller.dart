
import 'package:get/get.dart';

class GetBuilderController extends GetxController {
  
  var nome = 'Gustavo Dias';

  int contador = 0;

  void alterarNome() {
    nome = 'Gustaf Serano';
    update();
  }
  
  void increment() {
    contador++;
    update(['contador']);
  }

}