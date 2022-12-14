import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_health_guide/app/routes/app_pages.dart';
import '../../../../Constants/constants.dart';
import '../../../../Widgets/backButton.dart';
import '../../../../Widgets/my_text.dart';
import 'package:get/get.dart';

import '../controllers/saved_controller.dart';

class SavedView extends GetView<SavedController> {
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
              text: 'Saved',
              size: 16 * sp,
              weight: ksix,
              color: knavy,
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: w / 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: h * 0.02),
                  ...List.generate(
                    getData.length,
                    (index) => Container(
                      margin: EdgeInsets.only(bottom: h * 0.02),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 16.0,
                            spreadRadius: 0,
                            color: Color(0xff000000).withOpacity(0.1),
                          )
                        ],
                        color: kwhite,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: w * 0.03),
                            padding: EdgeInsets.all(8),
                            height: h * 0.13,
                            width: w * 0.25,
                            decoration: BoxDecoration(
                              color: kblack,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('${getData[index].imgUri}'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: MyText(
                                        text: "${getData[index].name}",
                                        size: 16 * sp,
                                        weight: kfive,
                                        color: knavy,
                                      ),
                                    ),
                                    Icon(Icons.favorite_outlined),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Row(
                                  children: [
                                    ...List.generate(
                                      5,
                                      (index) => Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xffFFCB45),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/location.svg'),
                                    MyText(
                                      text: "2.7 miles",
                                      size: 12 * sp,
                                      weight: kfive,
                                      color: Color(0xff929292),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/clock.svg'),
                                    SizedBox(width: 2),
                                    MyText(
                                      text: "08:00 AM - 10:30 PM",
                                      size: 12 * sp,
                                      weight: kfive,
                                      color: Color(0xff929292),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class containerData {
  final imgUri;
  final name;

  containerData({required this.imgUri, required this.name});
}

List<containerData> getData = [
  containerData(imgUri: 'assets/icons/goldPharm.png', name: 'Gould Pharmacy'),
  containerData(
      imgUri: 'assets/icons/smartClinic.png', name: 'The Smart Clinics'),
  containerData(
      imgUri: 'assets/icons/watsonPharmacy.png', name: 'Watsons Pharmacy'),
  containerData(imgUri: 'assets/icons/goldPharm.png', name: 'Gould Pharmacy'),
  containerData(
      imgUri: 'assets/icons/smartClinic.png', name: 'The Smart Clinics'),
  containerData(
      imgUri: 'assets/icons/watsonPharmacy.png', name: 'Watsons Pharmacy'),
];
