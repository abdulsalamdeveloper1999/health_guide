import 'package:get/get.dart';
import 'package:my_health_guide/app/modules/Login/views/login_view.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(
      Duration(seconds: 3),
    );
    Get.off(() => LoginView());
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
