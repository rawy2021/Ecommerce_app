// ignore_for_file: invalid_use_of_protected_member

import 'package:ecommerce/logic/controller/cart_controller.dart';
import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/utils/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../logic/controller/navigation_bar_controller.dart';
import '../../../utils/constant/color.dart';
import '../../widget/text_utils.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final controller = Get.find<MainNavBarController>();
  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() {
        return Scaffold(
          backgroundColor: context.theme.dialogBackgroundColor,
          appBar: AppBar(
            centerTitle: true,
            elevation: 0.0,
            leading: Container(),

            actions: [
              Obx(() {
                return Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Badge(
                    label: Text(cartController.quantity().toString()),
                    backgroundColor: Get.isDarkMode ? whiteClr : mainColor,
                    child: IconButton(
                        onPressed: () {
                          // Get.isDarkMode
                          //     ? Get.changeThemeMode(ThemeMode.light)
                          //     : Get.changeThemeMode(ThemeMode.dark);
                          Get.toNamed(Routes.cartScreen);
                        },
                        icon: Image.asset(ImageAsset.shop_Image)),
                  ),
                );
              })
            ],
            // iconTheme: IconThemeData(),
            title: TextUtils(
              text: controller.title[controller.currentIndex.value],
              fontSize: 22.r,
              fontWeight: FontWeight.w500,
              color: Get.isDarkMode ? mainColor : whiteClr,
            ),
            backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
          ),
          // backgroundColor: Get.isDarkMode?whiteClr:darkGreyClr,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Get.isDarkMode ? darkGreyClr : whiteClr,
            currentIndex: controller.currentIndex.value,
            type: BottomNavigationBarType.fixed,
            elevation: 0.0,
            items: [
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  color: Get.isDarkMode ? whiteClr : mainColor,
                ),
                icon: Icon(
                  Icons.home,
                  color: Get.isDarkMode ? whiteClr : darkGreyClr,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.shopping_cart,
                  color: Get.isDarkMode ? whiteClr : mainColor,
                ),
                icon: Icon(
                  Icons.shopping_cart,
                  color: Get.isDarkMode ? whiteClr : darkGreyClr,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.favorite,
                  color: Get.isDarkMode ? whiteClr : mainColor,
                ),
                icon: Icon(
                  Icons.favorite,
                  color: Get.isDarkMode ? whiteClr : darkGreyClr,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.settings,
                  color: Get.isDarkMode ? whiteClr : mainColor,
                ),
                icon: Icon(
                  Icons.settings,
                  color: Get.isDarkMode ? whiteClr : darkGreyClr,
                ),
                label: '',
              ),
            ],
            onTap: (index) {
              controller.currentIndex.value = index;
            },
          ),
          body: IndexedStack(
            index: controller.currentIndex.value,
            children: controller.tabs.value,
          ),
        );
      }),
    );
  }
}
