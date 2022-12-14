import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import 'my_text.dart';

class MyButton extends StatelessWidget {
  var bgcolor;
  final text;
  var textColor;
  var bdcolor;
  VoidCallback? onPress;

  MyButton({
    Key? key,
    required this.text,
    this.bdcolor = knavy,
    this.bgcolor = knavy,
    this.textColor = kwhite,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return SizedBox(
      width: w,
      height: h * 0.082,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            width: 1.0,
            color: bdcolor ?? knavy,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
          backgroundColor: bgcolor,
        ),
        onPressed: onPress,
        child: Center(
          child: MyText(
            align: TextAlign.center,
            text: '$text',
            size: 14 * sp,
            weight: ksix,
            color: textColor,
            fontFamily: 'Inter',
          ),
        ),
      ),
    );
  }
}
