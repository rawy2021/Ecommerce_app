import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 5),
          child: Align(
            alignment: Alignment.topLeft,
            child: TextUtils(
                text: 'All Products',
                fontSize: 12.h,
                fontWeight: FontWeight.normal,
                color: Get.isDarkMode ? whiteClr : darkGreyClr),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.r, vertical: 5),
          child: Align(
            alignment: Alignment.topLeft,
            child: TextUtils(
                text: 'See All',
                fontSize: 12.h,
                fontWeight: FontWeight.normal,
                color: Get.isDarkMode ? whiteClr : darkGreyClr),
          ),
        ),
      ],
    );
  }
}
