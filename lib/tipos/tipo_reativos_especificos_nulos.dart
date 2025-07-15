
import 'package:get/get.dart';

class TipoReativosEspecificosNulos {
  
  final nome = RxnString();
  final isAluno = RxnBool();
  final isAluno2 = Rxn<bool>();
  final qtdAlunos = RxnInt();
  final valorCurso = RxnDouble();

  void test(){
    isAluno.toggle();
    isAluno.isFalse;
    isAluno.isTrue;
    
    isAluno2.toggle();
    isAluno2.isFalse;
    isAluno2.isTrue;
  }

}
