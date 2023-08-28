import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/constant/color.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final IconData? iconData;
  final double? width;
  const TextButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.iconData,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width / 1.3,
      height: 50.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Get.isDarkMode ? whiteClr : mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: TextUtils(
          text: text,
          fontSize: 15.sp,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? darkGreyClr : whiteClr,
        ),
      ),
    );
  }
}
