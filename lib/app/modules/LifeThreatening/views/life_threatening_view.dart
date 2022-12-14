import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_health_guide/Widgets/elevated_button_widget.dart';
import 'package:my_health_guide/app/routes/app_pages.dart';
import '../../../../Constants/constants.dart';
import '../../../../Widgets/backButton.dart';
import '../../../../Widgets/my_text.dart';
import 'package:get/get.dart';
import '../controllers/life_threatening_controller.dart';

bool _value = false;

class LifeThreateningView extends GetView<LifeThreateningController> {
  void Dialogue(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    showDialog(
        context: (context),
        builder: (BuildContext context) {
          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            content: Container(
              height: h / 1.2,
              width: w / 2,
              child: Column(
                children: [
                  MyText(
                    align: TextAlign.center,
                    text: 'What do we mean by life threatening?',
                    size: 20 * sp,
                    weight: ksix,
                    color: knavy,
                  ),
                  SizedBox(height: h * 0.02),
                  ...List.generate(
                    checkText.length,
                    (index) => ListTileRow(text: '${checkText[index]}'),
                  ),
                  SizedBox(height: h * 0.02),
                  MyButton(
                      text: 'Continue',
                      onPress: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(height: h * 0.015),
                  MyButton(
                    bgcolor: kwhite,
                    text: 'Cancel',
                    onPress: () {
                      Navigator.pop(context);
                    },
                    bdcolor: kwhite,
                    textColor: knavy,
                  ),
                ],
              ),
            ),
          );
        });
  }

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
                      text: 'Is the problem life threatening?',
                      size: 20 * sp,
                      weight: ksix,
                      color: knavy,
                    ),
                    SizedBox(height: h * 0.05),
                    MyButton(
                        text: 'Yes it is',
                        onPress: () {
                          Dialogue(context);
                        }),
                    SizedBox(height: h * 0.03),
                    MyButton(
                      bgcolor: kwhite,
                      text: 'No',
                      onPress: () {
                        Get.toNamed(Routes.SEE_DOCTOR);
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

class ListTileRow extends StatefulWidget {
  final text;
  const ListTileRow({Key? key, required this.text}) : super(key: key);

  @override
  State<ListTileRow> createState() => _ListTileRowState();
}

class _ListTileRowState extends State<ListTileRow> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return Row(
      children: [
        Checkbox(
            fillColor: MaterialStatePropertyAll(knavy),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value!;
              });
            }),
        Expanded(
          child: MyText(
            text: "${widget.text}",
            size: 16 * sp,
            weight: kfive,
            color: kblack,
          ),
        ),
      ],
    );
  }
}

List checkText = [
  'Loss of Consciousness',
  'An acute confused state',
  'Fits that are not stoping',
  'Chest pain',
  'Breathing difficulties',
  'Severe bleeding that are not stopped',
  'Severe bleeding that are not stopped',
];
