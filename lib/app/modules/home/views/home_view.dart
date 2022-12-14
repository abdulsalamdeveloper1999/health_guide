import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_health_guide/Constants/constants.dart';
import 'package:my_health_guide/Widgets/backButton.dart';
import 'package:my_health_guide/Widgets/my_text.dart';
import 'package:my_health_guide/app/modules/ChangePassword/views/change_password_view.dart';
import 'package:my_health_guide/app/modules/ContactUs/views/contact_us_view.dart';
import 'package:my_health_guide/app/modules/HelpFaq/views/help_faq_view.dart';
import 'package:my_health_guide/app/modules/Login/views/login_view.dart';
import 'package:my_health_guide/app/modules/MyProfile/views/my_profile_view.dart';
import 'package:my_health_guide/app/modules/PrivacyPolicy/views/privacy_policy_view.dart';
import 'package:my_health_guide/app/modules/Saved/views/saved_view.dart';
import 'package:my_health_guide/app/modules/TermsCondition/views/terms_condition_view.dart';
import 'package:my_health_guide/app/modules/home/controllers/home_controller.dart';
import 'package:my_health_guide/app/routes/app_pages.dart';

HomeController _controller = Get.put(HomeController());

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          drawer: DrawerWidget(context),
          body: Container(
            // padding: EdgeInsets.symmetric(vertical: h * 0.04),
            height: h,
            width: w,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/icons/map.jpg'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
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
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              print('object');
                              _scaffoldKey.currentState?.openDrawer();
                            },
                            child: SvgPicture.asset('assets/icons/menu.svg'),
                          ),
                          MyText(
                            text: 'Home',
                            size: 16 * sp,
                            weight: ksix,
                            color: knavy,
                          ),
                          SvgPicture.asset('assets/icons/target.svg'),
                        ],
                      ),
                      SizedBox(height: h * 0.02),
                      Row(
                        children: [
                          Expanded(
                            child: SearchField(context),
                          ),
                          SizedBox(width: w * 0.03),
                          SvgPicture.asset('assets/icons/filter.svg')
                        ],
                      )
                    ],
                  ),
                ),
                ScrollContainers()
              ],
            ),
          )),
    );
  }

  Widget SearchField(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 3),
            blurRadius: 5,
            spreadRadius: 0,
            color: Color(0xff000000).withOpacity(0.20),
          ),
        ],
      ),
      height: h * 0.078,
      child: TextFormField(
        onTap: () {
          Get.toNamed(Routes.RESULTS);
        },
        readOnly: true,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          fontSize: 12 * sp,
          fontWeight: FontWeight.w400,
          fontFamily: 'Inter',
          color: Color(0xff8A8A8A),
        ),
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: EdgeInsets.all(15.0),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
            ),
          ),
          hintStyle: TextStyle(
            fontSize: 12 * sp,
            fontWeight: FontWeight.w400,
            fontFamily: 'Inter',
            color: Color(0xff8A8A8A),
          ),
          hintText: 'e.g. runny nose, headache, cough',
          filled: true,
          fillColor: kwhite,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}

class ScrollContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            3,
            (index) => InkWell(
              onTap: () {
                Get.toNamed(Routes.RESULTS);
              },
              child: Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(
                  right: w * 0.1 - 28,
                  left: w / 20,
                  bottom: h * 0.04,
                  top: h * 0.04,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffE3E3E3),
                  ),
                  color: kwhite,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          image: AssetImage('assets/icons/goldPharm.png'),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Gould Pharmacy",
                          size: 16 * sp,
                          weight: kfive,
                          color: knavy,
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
                            SvgPicture.asset('assets/icons/location.svg'),
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
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget DrawerWidget(BuildContext context) {
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;
  final sp = MediaQuery.of(context).textScaleFactor;
  return Drawer(
    width: Get.width,
    backgroundColor: kwhite,
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyBackButton(),
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
          SizedBox(height: h * 0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyText(
                text: 'Leon Fiverr',
                size: 18 * sp,
                weight: ksix,
                color: knavy,
              ),
              MyText(
                text: 'leon@myhealthguide.com',
                size: 14 * sp,
                weight: kfour,
                color: Color(0xff3A3A3A),
              ),
              SizedBox(height: h * 0.06),
              ...List.generate(
                  _getData.length,
                  (index) => Padding(
                        padding: EdgeInsets.only(
                          left: w / 20,
                          right: w / 20,
                          bottom: h * 0.04,
                        ),
                        child: InkWell(
                          onTap: () {
                            index == 0
                                ? Navigator.pop(context)
                                : index == 8
                                    ? Get.offAndToNamed(Routes.LOGIN)
                                    : Get.to(() => pages[index]);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    '${_getData[index].svgUri}',
                                    height: 30,
                                  ),
                                ],
                              ),
                              SizedBox(width: w * 0.04),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyText(
                                    text: '${_getData[index].text}',
                                    size: 16 * sp,
                                    weight: kfive,
                                    color: knavy,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
              Center(
                child: MyText(
                  text: 'Copyright © My Health Guide',
                  size: 14 * sp,
                  weight: kfive,
                  color: Color(0xff3A3A3A),
                ),
              ),
              SizedBox(height: h * 0.06),
            ],
          ),
        ],
      ),
    ),
  );
}

class listTileData {
  String text;
  String svgUri;

  listTileData({required this.text, required this.svgUri});
}

List<listTileData> _getData = [
  listTileData(text: 'Home', svgUri: 'assets/icons/home.svg'),
  listTileData(text: 'My Profile', svgUri: 'assets/icons/user.svg'),
  listTileData(
      text: 'Saved Clinic - Pharmacy', svgUri: 'assets/icons/heart.svg'),
  listTileData(text: 'Contact Us', svgUri: 'assets/icons/contact_us.svg'),
  listTileData(text: 'Change Password', svgUri: 'assets/icons/pass.svg'),
  listTileData(text: 'Privacy Policy', svgUri: 'assets/icons/policy.svg'),
  listTileData(text: 'Terms & Conditions', svgUri: 'assets/icons/terms.svg'),
  listTileData(text: 'Help & FAQ’s', svgUri: 'assets/icons/help.svg'),
  listTileData(text: 'Logout', svgUri: 'assets/icons/logout.svg'),
];
final pages = [
  HomeView(),
  MyProfileView(),
  SavedView(),
  ContactUsView(),
  ChangePasswordView(),
  PrivacyPolicyView(),
  TermsConditionView(),
  HelpFaqView(),
  LoginView()
];
