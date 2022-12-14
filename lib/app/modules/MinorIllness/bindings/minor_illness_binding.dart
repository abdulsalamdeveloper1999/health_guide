import 'package:get/get.dart';

import '../controllers/minor_illness_controller.dart';

class MinorIllnessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MinorIllnessController>(
      () => MinorIllnessController(),
    );
  }
}
