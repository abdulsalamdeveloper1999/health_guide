import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_health_guide/Constants/constants.dart';
import 'package:my_health_guide/Widgets/backButton.dart';
import 'package:my_health_guide/Widgets/elevated_button_widget.dart';
import 'package:my_health_guide/Widgets/login_field.dart';
import 'package:my_health_guide/Widgets/my_text.dart';
import 'package:my_health_guide/app/routes/app_pages.dart';
import 'package:get/get.dart';
import '../controllers/sign_up_controller.dart';

SignUpController _controller = Get.put(SignUpController());

class SignUpView extends StatefulWidget {
  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return SafeArea(
      child: Scaffold(
        backgroundColor: klgrey,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: MyBackButton(),
          title: MyText(
            text: 'SIGN UP',
            size: 16 * sp,
            weight: ksix,
          ),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: w / 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: h * 0.1),
                  SvgPicture.asset(
                    'assets/icons/signLogo.svg',
                  ),
                  SizedBox(height: h * 0.04),
                  Form(
                    key: _controller.formkey,
                    child: Column(
                      children: [
                        LoginFields(
                          fieldValidator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Your Name';
                            } else {
                              null;
                            }
                          },
                          formcontroller: _controller.nameController,
                          prefixicon: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SvgPicture.asset('assets/icons/user.svg'),
                          ),
                          hintText: 'Enter your Name',
                        ),
                        SizedBox(height: h * 0.03),
                        LoginFields(
                          fieldValidator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Your Email';
                            } else {
                              null;
                            }
                          },
                          formcontroller: _controller.emailController,
                          prefixicon: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SvgPicture.asset('assets/icons/email.svg'),
                          ),
                          hintText: 'Enter your Email',
                        ),
                        SizedBox(height: h * 0.03),
                        LoginFields(
                          obSecure: visible,
                          suffixicon: GestureDetector(
                            onTap: () {
                              setState(() {
                                visible = !visible;
                              });
                            },
                            child: Icon(
                              Icons.visibility,
                              color: Color(0xffD1D1D1),
                            ),
                          ),
                          fieldValidator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Your Password';
                            } else {
                              null;
                            }
                          },
                          formcontroller: _controller.passwordController,
                          prefixicon: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SvgPicture.asset('assets/icons/pass.svg'),
                          ),
                          hintText: 'Enter your Password',
                        ),
                        SizedBox(height: h * 0.03),
                        LoginFields(
                          obSecure: visible,
                          fieldValidator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Your Password Again';
                            } else {
                              null;
                            }
                          },
                          suffixicon: GestureDetector(
                            onTap: () {
                              setState(() {
                                visible = !visible;
                              });
                            },
                            child: Icon(
                              Icons.visibility,
                              color: Color(0xffD1D1D1),
                            ),
                          ),
                          formcontroller: _controller.confirmpasswordController,
                          prefixicon: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SvgPicture.asset('assets/icons/pass.svg'),
                          ),
                          hintText: 'Confirm your Password',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.04),
                  MyButton(
                      text: 'Sign Up',
                      onPress: () {
                        if (_controller.formkey.currentState!.validate()) {
                          Get.offAndToNamed(Routes.FACILITY_LOOKING_FOR);
                          _controller.passwordController.clear();
                          _controller.emailController.clear();
                          _controller.nameController.clear();
                          _controller.confirmpasswordController.clear();
                        } else {
                          DoNothingAction();
                        }
                      }),
                  SizedBox(height: h * 0.03),
                  Container(
                    padding: EdgeInsets.only(bottom: h * 0.06),
                    height: h * 0.4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/backframe.png'),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: "Already have an account?",
                            size: 16 * sp,
                            weight: kfive,
                            color: Color(0xff3A3A3A),
                          ),
                          MyText(
                            text: " Sign In",
                            size: 16 * sp,
                            weight: ksix,
                            color: Color(0xff3A3A3A),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
