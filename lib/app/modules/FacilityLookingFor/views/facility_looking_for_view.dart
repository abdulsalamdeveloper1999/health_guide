import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:my_health_guide/Widgets/elevated_button_widget.dart';
import 'package:my_health_guide/app/routes/app_pages.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/backButton.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/facility_looking_for_controller.dart';

class FacilityLookingForView extends GetView<FacilityLookingForController> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: MyBackButton(),
            title: MyText(
              text: 'Health questions',
              size: 16 * sp,
              weight: ksix,
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: w / 20),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: h * 0.1),
                    SvgPicture.asset('assets/icons/signLogo.svg'),
                    SizedBox(height: h * 0.1),
                    MyText(
                      align: TextAlign.center,
                      text: 'Do you know what facility you are looking for?',
                      size: 20 * sp,
                      weight: ksix,
                      color: knavy,
                    ),
                    SizedBox(height: h * 0.05),
                    MyButton(
                        text: 'Yes, I know',
                        onPress: () {
                          Get.toNamed(Routes.HOME);
                        }),
                    SizedBox(height: h * 0.03),
                    MyButton(
                      bgcolor: kwhite,
                      text: 'No, I Don\'t',
                      onPress: () {
                        Get.toNamed(Routes.LOOKING_FOR);
                      },
                      bdcolor: kbdcolor,
                      textColor: knavy,
                    ),
                    Image.asset('assets/icons/backframe.png')
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
