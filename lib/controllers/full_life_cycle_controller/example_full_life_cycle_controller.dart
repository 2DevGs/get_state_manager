
import 'package:get/get.dart';

class ExampleFullLifeCycleController extends FullLifeCycleController with FullLifeCycleMixin {

  @override
  void onInit() {
    print('###################### onInit %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
    super.onInit();
  }

  @override
  void onReady() {
    print('###################### onReady %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
    super.onReady();
  }

  @override
  void onClose() {
    print('###################### onClose %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
    super.onClose();
  }

  @override
  void onDetached() {
    print('###################### onDetached %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');

  }

  @override
  void onInactive() {
    print('###################### onInactive %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');

  }

  @override
  void onPaused() {
    print('###################### onPaused %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');

  }

  @override
  void onResumed() {
    print('###################### onResumed %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');

  }

}