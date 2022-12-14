import 'dart:ui';

import 'package:flutter/material.dart';

const Color kteal = Color(0xff489F89);
const Color knavy = Color(0xff1C445D);
const Color kbeige = Color(0xffF7F4ED);
const Color kpeach = Color(0xffF6C8A6);
const Color kblack = Color(0xff070707);
const Color klgrey = Color(0xffF7F6F4);
const Color kwhite = Color(0xffFFFFFF);
const Color kbdcolor = Color(0xffD8D8D8);

const FontWeight kfour = FontWeight.w400;
const FontWeight kfive = FontWeight.w500;
const FontWeight ksix = FontWeight.w600;
const FontWeight kseven = FontWeight.w700;

var kborder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(
    color: Color(0xffD8D8D8),
  ),
);

var kfocusedborder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(
    color: knavy,
  ),
);

var ksoftshadow = BoxShadow(
  offset: Offset(0, 2),
  blurRadius: 20.0,
  spreadRadius: 0.0,
  color: Color(0xff000000).withOpacity(0.2),
);
