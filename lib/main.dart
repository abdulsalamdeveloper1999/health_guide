import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_health_guide/Constants/constants.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kwhite,
      ),
      title: "My Health Guide",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
