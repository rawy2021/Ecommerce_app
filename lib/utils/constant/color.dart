// ignore_for_file: unnecessary_import, deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';

const Color mainColor = Color(0xff00BE84);
const Color darkGreyClr = Color(0xff121212);
// const Color darkGreyClr = Color(0xff2C3E50);
const Color pinkClr = Color(0xffFF4667);
const Color whiteClr = Color(0xffFDFEFE);
const Color kColor1 = Color(0xff685959);
const Color kColor2 = Color(0xffADA798);
const Color kColor3 = Color(0xffA5947F);
const Color kColor4 = Color(0xff738B71);
const Color kColor5 = Color(0xff604D45);
const Color offWhite = Color(0xffD5D8DC);
const Color kGrey = Color(0xffABB2B9);
const Color darkSetting = Color(0xff6132e4);
const Color accountSetting = Color(0xff73bc65);
const Color logOutSetting = Color(0xff5f95ef);
const Color noteSetting = Color(0xffdf5862);
const Color languageSetting = Color(0xffcb256c);

class ThemeApp {
  static final light = ThemeData(
      primaryColor: mainColor,
      backgroundColor: whiteClr,
      brightness: Brightness.light);
  static final dark = ThemeData(
      primaryColor: darkGreyClr,
      backgroundColor: darkGreyClr,
      brightness: Brightness.dark);
}
