import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:my_health_guide/Widgets/elevated_button_widget.dart';
import 'package:my_health_guide/app/modules/Saved/views/saved_view.dart';
import 'package:my_health_guide/app/routes/app_pages.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/backButton.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
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
              text: 'Profile',
              size: 16 * sp,
              weight: ksix,
              color: knavy,
            ),
            actions: [
              InkWell(
                  onTap: () {
                    Get.toNamed(Routes.SAVED);
                  },
                  child: SvgPicture.asset('assets/icons/heart.svg')),
              SizedBox(width: w * 0.02)
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: w / 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: h * 0.2,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/icons/pf.png')),
                        color: kwhite,
                        border: Border.all(color: kwhite, width: 7),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff000000).withOpacity(0.15),
                            offset: Offset(0, 4),
                            blurRadius: 14,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyText(
                        text: 'The Smart Clinics',
                        size: 18 * sp,
                        weight: ksix,
                        color: knavy,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Color(0xffFFCB45),
                                  ))
                        ],
                      ),
                    ],
                  ),
                  About(context),
                  Timing(context),
                  Location(context),
                ],
              ),
            ),
          )),
    );
  }
}

Widget About(BuildContext context) {
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;
  final sp = MediaQuery.of(context).textScaleFactor;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      MyText(
        text: 'About',
        size: 18 * sp,
        weight: ksix,
        color: knavy,
      ),
      SizedBox(height: h * 0.01),
      MyText(
        text:
            'As a doctor-led company, our mission is to strive towards delivering the best possible service for all our patients, whatever their needs, whenever they contact us or visit for a healthcare appointment.',
        size: 14 * sp,
        weight: kfour,
        color: Color(0xff3D3D3D),
      ),
      SizedBox(height: h * 0.03),
    ],
  );
}

Widget Timing(BuildContext context) {
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;
  final sp = MediaQuery.of(context).textScaleFactor;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      MyText(
        text: 'Timings',
        size: 18 * sp,
        weight: ksix,
        color: knavy,
      ),
      SizedBox(height: h * 0.01),
      Row(
        children: [
          MyText(
            text: 'Mon - Thurs: ',
            size: 14 * sp,
            weight: ksix,
            color: Color(0xff3D3D3D),
          ),
          MyText(
            text: '09:00 AM - 08:30 PM ',
            size: 14 * sp,
            weight: kfour,
            color: Color(0xff3D3D3D),
          ),
        ],
      ),
      SizedBox(height: 2),
      Row(
        children: [
          MyText(
            text: 'Fri - Sat: ',
            size: 14 * sp,
            weight: ksix,
            color: Color(0xff3D3D3D),
          ),
          MyText(
            text: '09:00 AM - 08:30 PM ',
            size: 14 * sp,
            weight: kfour,
            color: Color(0xff3D3D3D),
          ),
        ],
      ),
      SizedBox(height: h * 0.02),
      MyText(
        text:
            'Opening hours vary by clinic. We are CLOSED on Sundays and bank holidays.',
        size: 14 * sp,
        weight: kfour,
        color: Color(0xff3D3D3D),
      ),
      SizedBox(height: h * 0.02),
    ],
  );
}

Widget Location(BuildContext context) {
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;
  final sp = MediaQuery.of(context).textScaleFactor;

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      MyText(
        text: 'Location',
        size: 18 * sp,
        weight: ksix,
        color: knavy,
      ),
      SizedBox(height: h * 0.01),
      Container(
        height: h * 0.3,
        width: w,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/icons/locationMap.png'),
          ),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                  colors: [
                    kwhite,
                    kwhite.withOpacity(0.1),
                  ],
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/icons/location.svg',
                    color: Color(0xff3D3D3D),
                  ),
                  Expanded(
                    child: MyText(
                      text: '120 Northcote Road, Wandsworth, London, SW11 6QU',
                      size: 14 * sp,
                      weight: ksix,
                      color: Color(0xff3D3D3D),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: h * 0.12),
            MyButton(text: 'Call Now', onPress: () {}),
          ],
        ),
      )
    ],
  );
}
