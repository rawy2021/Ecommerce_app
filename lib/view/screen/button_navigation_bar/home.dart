// ignore_for_file: prefer_const_constructors, deprecated_member_use
import 'package:ecommerce/view/widget/home/categHome.dart';
import 'package:ecommerce/view/widget/home/seeAll.dart';
import 'package:ecommerce/view/widget/home/test_api.dart';
import 'package:ecommerce/view/widget/search_text_field.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/constant/color.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150.h,
            decoration: BoxDecoration(
              color: Get.isDarkMode ? darkGreyClr : mainColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.r),
                  bottomRight: Radius.circular(20.r)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.r),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextUtils(
                        text: ' Find Your \n Product',
                        fontSize: 18.r,
                        fontWeight: FontWeight.w500,
                        color: whiteClr),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SearchFormFiled()
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CategoryHome(),
          SeeAll(),
          //  CardItem(),
          TestCardItem(),
        ],
      ),
    ));
  }
}
