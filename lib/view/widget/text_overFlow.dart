// ignore_for_file: file_names

import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:ecommerce/utils/constant/color.dart';

class TextOverFlow extends StatelessWidget {
  const TextOverFlow({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 20.r,
          fontWeight: FontWeight.w400,
          color: Get.isDarkMode ? whiteClr : darkGreyClr),
    );
  }
}
