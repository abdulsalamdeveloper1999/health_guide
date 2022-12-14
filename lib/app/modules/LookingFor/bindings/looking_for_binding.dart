import 'package:get/get.dart';

import '../controllers/looking_for_controller.dart';

class LookingForBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LookingForController>(
      () => LookingForController(),
    );
  }
}
