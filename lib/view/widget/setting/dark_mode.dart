import 'package:ecommerce/logic/controller/setting_controller.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/widget/setting/icon_widget.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DarkMode extends StatelessWidget {
  DarkMode({super.key});
  final SettingController controller = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IconWidget(icon: Icons.dark_mode_outlined),
          SizedBox(
            width: 5.w,
          ),
          Expanded(
            child: TextUtils(
                text: Get.isDarkMode ? 'Light Mode'.tr : 'Dark Mode'.tr,
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
                color: Get.isDarkMode ? whiteClr : darkGreyClr),
          ),
          const SizedBox(
              //  width: 20,
              ),
          Expanded(
            child: SwitchListTile(
                activeColor: Get.isDarkMode ? mainColor : mainColor,
                activeTrackColor: Get.isDarkMode ? whiteClr : mainColor,
                value: controller.isSwitched,
                onChanged: (bool value) {
                  controller.changeSwitchedState(value);
                }),
          ),
        ],
      ),
    );
  }
}
