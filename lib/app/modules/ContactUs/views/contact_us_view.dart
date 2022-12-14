import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_health_guide/Widgets/elevated_button_widget.dart';
import '../../../../Constants/constants.dart';
import '../../../../Widgets/backButton.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/contact_us_controller.dart';

ContactUsController _controller = Get.put(ContactUsController());

class ContactUsView extends StatefulWidget {
  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
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
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: SvgPicture.asset("assets/icons/back_svg.svg"),
          ),
          title: MyText(
            text: 'Help & FAQ’s',
            size: 16 * sp,
            weight: ksix,
            color: knavy,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: w / 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: h * 0.03),
                MyText(
                  text: 'Got Questions? Let us Help!',
                  size: 20 * sp,
                  weight: ksix,
                  color: Color(0xff242424),
                ),
                SizedBox(height: h * 0.01),
                MyText(
                  text:
                      'Got questions about Scooterman? Contact us today and one of our team will be happy to help answer your questions.',
                  size: 14 * sp,
                  weight: kfour,
                  color: Color(0xff3D3D3D),
                ),
                SizedBox(height: h * 0.03),
                DataWidget(context),
                SizedBox(height: h * 0.02),
                MyText(
                  text: 'Ask a Question?',
                  size: 20 * sp,
                  weight: ksix,
                  color: Color(0xff242424),
                ),
                SizedBox(height: h * 0.01),
                MyText(
                  text:
                      'Got a specific question you\'d like us to look into and get back to you about? Fill out our Contact form and we\'ll look into it!',
                  size: 14 * sp,
                  weight: kfour,
                  color: Color(0xff3D3D3D),
                ),
                SizedBox(height: h * 0.02),
                FormsWidget(context),
                TextFormField(
                  maxLines: 5,
                  controller: _controller.msgController,
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
                    hintText: 'Your Message...',
                    border: kborder,
                    focusedBorder: kfocusedborder,
                    enabledBorder: kborder,
                  ),
                ),
                SizedBox(height: h * 0.02),
                MyButton(
                    text: 'Send',
                    onPress: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: h * 0.04),
              ],
            ),
          ),
        ),
      ),
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
              SizedBox(
                height: h * 0.08,
                child: TextFormField(
                  controller: _getDataS[index].controller,
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
                    hintText: '${_getDataS[index].btext}',
                    border: kborder,
                    focusedBorder: kfocusedborder,
                    enabledBorder: kborder,
                  ),
                ),
              ),
              SizedBox(height: h * 0.03),
            ],
          ),
        )
      ],
    );
  }
}

class datas {
  String btext;
  var controller;

  datas({required this.btext, required this.controller});
}

List<datas> _getDataS = [
  datas(btext: 'Full Name', controller: _controller.nameController),
  datas(btext: 'Email Address', controller: _controller.emailController),
  datas(btext: 'Phone Number', controller: _controller.numberController),
];

class data {
  final svgUri;
  final text;

  data({required this.svgUri, required this.text});
}

List<data> _getData = [
  data(svgUri: 'assets/icons/phone.svg', text: '+ 123 456 7890'),
  data(svgUri: 'assets/icons/mail.svg', text: 'info@myhealthguide.com'),
  data(
      svgUri: 'assets/icons/locaion.svg',
      text: '1234 Lorem Street Dummy Address London, UK'),
];

Widget DataWidget(BuildContext context) {
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;
  final sp = MediaQuery.of(context).textScaleFactor;

  return Column(
    children: [
      ...List.generate(
        _getData.length,
        (index) => Column(
          children: [
            Row(
              children: [
                SvgPicture.asset('${_getData[index].svgUri}'),
                SizedBox(width: w * 0.04),
                Expanded(
                  child: MyText(
                    text: '${_getData[index].text}',
                    size: 16 * sp,
                    weight: kfive,
                    color: Color(0xff242424),
                  ),
                )
              ],
            ),
            SizedBox(height: h * 0.02)
          ],
        ),
      )
    ],
  );
}
