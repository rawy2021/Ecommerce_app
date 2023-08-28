// import 'package:ecommerce/routes/app_routes.dart';
// import 'package:ecommerce/utils/constant/color.dart';
// import 'package:ecommerce/view/widget/setting/icon_widget.dart';
// import 'package:ecommerce/view/widget/text_utils.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class LogOut extends StatelessWidget {
//   const LogOut({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return
//     InkWell(
//       splashColor: Get.isDarkMode ? whiteClr : mainColor,
//       borderRadius: BorderRadius.circular(12),
//       customBorder: StadiumBorder(),
//       onTap: () {
//         //  Get.to(const WelcomeScreen());
//         Get.defaultDialog(
//           title: "LogOut".tr,
//           titleStyle: const TextStyle(
//               fontSize: 13, fontWeight: FontWeight.bold, color: darkGreyClr),
//           middleText: "Are You Sure LogUot".tr,
//           middleTextStyle: const TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.bold,
//             color: darkGreyClr,
//           ),
//           backgroundColor: offWhite,
//           radius: 10,
//           textCancel: "NO".tr,
//           cancelTextColor: Get.isDarkMode ? darkGreyClr : whiteClr,
//           textConfirm: "YES".tr,
//           confirmTextColor: whiteClr,
//           onCancel: () {
//             //Get.toNamed(Routes.settingNavBar);
//             // Get.back();
//           },
//           onConfirm: () {
//             //  productMap.clear();
//             // Get.back();
//             Get.toNamed(Routes.welcomeScreen);
//           },
//           buttonColor: Get.isDarkMode ? darkGreyClr : mainColor,
//         );
//       },
//       child: Row(
//         children: [
//           const IconWidget(
//             icon: Icons.logout_outlined,
//           ),
//           const SizedBox(
//             width: 10,
//           ),
//           TextUtils(
//               text: 'LogOut'.tr,
//               fontSize: 22,
//               fontWeight: FontWeight.w500,
//               color: Get.isDarkMode ? whiteClr : darkGreyClr),
//         ],
//       ),
//     );
//   }
// }

import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/widget/setting/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../text_utils.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({Key? key}) : super(key: key);

  //final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Get.defaultDialog(
            title: "LogOut".tr,
            titleStyle: const TextStyle(
                fontSize: 13, fontWeight: FontWeight.bold, color: darkGreyClr),
            middleText: "Are You Sure LogUot".tr,
            middleTextStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: darkGreyClr,
            ),
            backgroundColor: offWhite,
            radius: 10,
            textCancel: "NO".tr,
            cancelTextColor: Get.isDarkMode ? darkGreyClr : whiteClr,
            textConfirm: "YES".tr,
            confirmTextColor: whiteClr,
            onCancel: () {
              //Get.toNamed(Routes.settingNavBar);
              // Get.back();
            },
            onConfirm: () {
              //  productMap.clear();
              // Get.back();
              Get.toNamed(Routes.welcomeScreen);
            },
            buttonColor: Get.isDarkMode ? darkGreyClr : mainColor,
          );
        },
        splashColor: Get.isDarkMode ? Colors.pink : Colors.green[100],
        borderRadius: BorderRadius.circular(12),
        customBorder: const StadiumBorder(),
        child: Row(
          children: [
            const IconWidget(
              icon: Icons.logout_outlined,
            ),
            const SizedBox(
              width: 10,
            ),
            TextUtils(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
              text: "Logout".tr,
              color: Get.isDarkMode ? Colors.white : Colors.black,
              //underLine: TextDecoration.none,
            ),
          ],
        ),
      ),
    );
  }
}
