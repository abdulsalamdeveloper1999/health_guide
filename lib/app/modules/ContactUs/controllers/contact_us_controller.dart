import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ContactUsController extends GetxController {
  //TODO: Implement EditProfileController

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController numberController = TextEditingController();

  TextEditingController msgController = TextEditingController();

  @override
  void onDispose() {
    nameController.dispose();

    emailController.dispose();

    numberController.dispose();

    msgController.dispose();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
