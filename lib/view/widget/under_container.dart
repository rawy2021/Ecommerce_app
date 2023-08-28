import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constant/color.dart';

class UnderContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final Function() onTap;
  const UnderContainer(
      {super.key,
      required this.text1,
      required this.text2,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(60), topRight: Radius.circular(20)),
        color: Get.isDarkMode ? mainColor : whiteClr,
      ),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextUtils(
                text: text1,
                color: Get.isDarkMode ? whiteClr : darkGreyClr,
                fontWeight: FontWeight.w300,
                fontSize: 15,
              ),
            ),
            InkWell(
              onTap: onTap,
              child: Center(
                child: TextUtils(
                  textDecoration: TextDecoration.underline,
                  text: text2,
                  color: Get.isDarkMode ? whiteClr : mainColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
