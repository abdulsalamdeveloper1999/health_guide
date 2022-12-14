import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_health_guide/Widgets/elevated_button_widget.dart';

import '../../../../Constants/constants.dart';
import '../../../../Widgets/backButton.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/change_password_controller.dart';

ChangePasswordController _controller = Get.put(ChangePasswordController());

class ChangePasswordView extends StatefulWidget {
  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  bool _visible = false;

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
              text: 'Change Password',
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
                  SizedBox(height: h * 0.04),
                  FormsWidget(context),
                  SizedBox(height: h * 0.02),
                  MyButton(
                    text: 'Update Password',
                    onPress: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
          )),
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
                        obscureText: _visible,
                        controller: _getData[index].controller,
                        style: TextStyle(
                          fontSize: 16 * sp,
                          fontWeight: kfour,
                          color: Color(0xff3A3A3A),
                          fontFamily: 'Inter',
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _visible = !_visible;
                              });
                            },
                            icon: Icon(
                              Icons.visibility,
                              color: Color(0xffD1D1D1),
                            ),
                          ),
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
      utext: 'Current Password',
      btext: 'Current Password',
      controller: _controller.changePassController),
  data(
      utext: 'New Password',
      btext: 'New Password',
      controller: _controller.newPassController),
  data(
      utext: 'Confirm New Password',
      btext: 'Confirm New Password',
      controller: _controller.confirmPassController),
];
