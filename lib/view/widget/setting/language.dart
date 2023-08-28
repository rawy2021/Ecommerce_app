import 'package:ecommerce/logic/controller/setting_controller.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/utils/constant/my_string.dart';
import 'package:ecommerce/view/widget/setting/icon_widget.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Language extends StatelessWidget {
  Language({super.key});

  final controller = Get.find<SettingController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(builder: (_) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IconWidget(icon: Icons.language),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: TextUtils(
                text: "Language".tr,
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
                color: Get.isDarkMode ? whiteClr : darkGreyClr),
          ),
          Material(
            child: Container(
              //width: 140,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: offWhite),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  iconSize: 16.sp,
                  icon: const Icon(Icons.arrow_drop_down),
                  items: [
                    DropdownMenuItem(
                      value: ara,
                      child: TextUtils(
                          text: arabic,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300,
                          color: Get.isDarkMode ? whiteClr : darkGreyClr),
                    ),
                    DropdownMenuItem(
                      value: eng,
                      child: TextUtils(
                          text: english,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300,
                          color: Get.isDarkMode ? whiteClr : darkGreyClr),
                    ),
                    DropdownMenuItem(
                      value: fre,
                      child: TextUtils(
                          text: french,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300,
                          color: Get.isDarkMode ? whiteClr : darkGreyClr),
                    ),
                  ],
                  value: controller.localLange,
                  onChanged: (value) {
                    controller.getChangeLanguage(value!);
                    Get.updateLocale(Locale(value));
                  },
                ),
              ),
            ),
          )
        ],
      );
    });
  }
}
