import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:my_health_guide/Constants/constants.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return SafeArea(
      child: Scaffold(
          backgroundColor: kteal,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  // height: h * 0.19,
                  ),
              Center(
                child: SvgPicture.asset('assets/icons/logo.svg'),
              ),
              Image.asset(
                'assets/icons/bottomFrame.png',
                height: h * 0.4,
              ),
            ],
          )),
    );
  }
}
