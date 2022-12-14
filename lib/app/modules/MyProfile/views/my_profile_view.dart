import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_health_guide/Widgets/elevated_button_widget.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/backButton.dart';
import '../../../../Widgets/my_text.dart';
import '../../EditProfile/views/edit_profile_view.dart';
import '../controllers/my_profile_controller.dart';

class MyProfileView extends GetView<MyProfileController> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: MyBackButton(),
            title: MyText(
              text: 'My Profile',
              size: 16 * sp,
              weight: ksix,
              color: knavy,
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: w / 20),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: h * 0.2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/icons/dp.png'),
                      ),
                      color: kwhite,
                      border: Border.all(color: kwhite, width: 2),
                    ),
                  ),
                ),
                MyText(
                  text: 'Leon Fiverr',
                  size: 16 * sp,
                  weight: ksix,
                  color: knavy,
                ),
                SizedBox(height: h * 0.04),
                ListData(context),
                SizedBox(height: h * 0.1),
                MyButton(
                    text: 'Edit Profile',
                    onPress: () {
                      Get.to(() => EditProfileView());
                    }),
              ],
            ),
          )),
    );
  }

  Widget ListData(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "${_getData[index].uText}",
                size: 14 * sp,
                weight: ksix,
                color: knavy,
              ),
              SizedBox(height: h * 0.01),
              MyText(
                text: "${_getData[index].bText}",
                size: 14 * sp,
                weight: ksix,
                color: Color(0xff3D3D3D),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: h * 0.01),
            child: Divider(),
          );
        },
        itemCount: _getData.length);
  }
}

class data {
  String uText;
  String bText;

  data({required this.uText, required this.bText});
}

List<data> _getData = [
  data(uText: 'Full Name', bText: 'Leon Fiverr'),
  data(uText: 'Email Address', bText: 'leon@myhealthguide.com'),
  data(uText: 'Phone Number', bText: '+ 123 456 7890'),
  data(uText: 'Address', bText: '123 St. Dummy Address, London, UK'),
];
