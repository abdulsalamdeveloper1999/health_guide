import 'package:get/get.dart';

import '../controllers/see_doctor_controller.dart';

class SeeDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SeeDoctorController>(
      () => SeeDoctorController(),
    );
  }
}
