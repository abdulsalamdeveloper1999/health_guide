import 'package:get/get.dart';

import '../controllers/facility_looking_for_controller.dart';

class FacilityLookingForBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FacilityLookingForController>(
      () => FacilityLookingForController(),
    );
  }
}
