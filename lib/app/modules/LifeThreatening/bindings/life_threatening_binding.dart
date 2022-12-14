import 'package:get/get.dart';

import '../controllers/life_threatening_controller.dart';

class LifeThreateningBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LifeThreateningController>(
      () => LifeThreateningController(),
    );
  }
}
