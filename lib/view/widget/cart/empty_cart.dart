import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:ecommerce/view/widget/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shopping_cart_sharp,
            size: 150.r,
            color: Get.isDarkMode ? whiteClr : darkGreyClr,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Your Cart Is ",
                style: TextStyle(
                  color: Get.isDarkMode ? whiteClr : darkGreyClr,
                  fontSize: 28.r,
                  fontWeight: FontWeight.w500,
                )),
            TextSpan(
                text: "Empty",
                style: TextStyle(
                  color: Get.isDarkMode ? whiteClr : mainColor,
                  fontSize: 30.r,
                  fontWeight: FontWeight.w500,
                ))
          ])),
          SizedBox(
            height: 10.h,
          ),
          TextUtils(
              text: "Add Item To Get Start",
              fontSize: 15.r,
              fontWeight: FontWeight.w300,
              color: Get.isDarkMode ? whiteClr : darkGreyClr),
          SizedBox(
            height: 30.h,
          ),
          TextButtonWidget(
              iconData: Icons.arrow_back_ios,
              text: "Go To Home",
              width: 270.w,
              onPressed: () {
                Get.toNamed(Routes.mainScreen);
              })
        ],
      ),
    );
  }
}
