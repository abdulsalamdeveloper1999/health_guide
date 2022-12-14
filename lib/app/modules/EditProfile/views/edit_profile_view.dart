import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/backButton.dart';
import '../../../../Widgets/elevated_button_widget.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/edit_profile_controller.dart';

EditProfileController _controller = Get.put(EditProfileController());

class EditProfileView extends GetView<EditProfileController> {
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
              text: 'My Profile',
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
                  UploadImage(context),
                  SizedBox(height: h * 0.04),
                  FormsWidget(context),
                  SizedBox(height: h * 0.04),
                  MyButton(
                      text: 'Save Changes',
                      onPress: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(height: h * 0.03),
                ],
              ),
            ),
          )),
    );
  }

  Widget UploadImage(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return Column(
      children: [
        Center(
          child: Stack(
            children: [
              Container(
                height: h * 0.25,
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
              Positioned(
                left: w * 0.5,
                top: h * 0.17,
                child: SvgPicture.asset(
                  'assets/icons/up.svg',
                  height: 30,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget FormsWidget(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;

    return Column(
      children: [
        ...List.generate(
            _getData.length,
            (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: '${_getData[index].utext}',
                      size: 14 * sp,
                      weight: ksix,
                      color: knavy,
                    ),
                    SizedBox(height: h * 0.01),
                    SizedBox(
                      height: h * 0.08,
                      child: TextFormField(
                        controller: _getData[index].controller,
                        style: TextStyle(
                          fontSize: 16 * sp,
                          fontWeight: kfour,
                          color: Color(0xff3A3A3A),
                          fontFamily: 'Inter',
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            fontSize: 16 * sp,
                            fontWeight: kfive,
                            color: Colors.grey,
                            fontFamily: 'Inter',
                          ),
                          hintText: '${_getData[index].btext}',
                          border: kborder,
                          focusedBorder: kfocusedborder,
                          enabledBorder: kborder,
                        ),
                      ),
                    ),
                    SizedBox(height: h * 0.03),
                  ],
                ))
      ],
    );
  }
}

class data {
  String utext;
  String btext;
  var controller;

  data({required this.utext, required this.btext, required this.controller});
}

List<data> _getData = [
  data(
      utext: 'Full Name',
      btext: 'Your Name',
      controller: _controller.nameController),
  data(
      utext: 'Email Address',
      btext: 'Your Email',
      controller: _controller.emailController),
  data(
      utext: 'Phone Number',
      btext: 'Your Phone Number',
      controller: _controller.numberController),
  data(
      utext: 'Address',
      btext: 'Your Address',
      controller: _controller.addressController),
];
