import 'package:ecommerce/logic/controller/cart_controller.dart';
import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/widget/text_button_widget.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartTotal extends StatelessWidget {
  CartTotal({super.key});

  final controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextUtils(
                      text: 'Total',
                      height: 1.h,
                      fontSize: 16.r,
                      fontWeight: FontWeight.normal,
                      color: Get.isDarkMode ? whiteClr : darkGreyClr),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextUtils(
                      text: '\$${controller.total}',
                      fontSize: 16.r,
                      fontWeight: FontWeight.normal,
                      color: Get.isDarkMode ? whiteClr : darkGreyClr),
                ],
              ),
            ),
            SizedBox(
              width: 0.w,
            ),
            TextButtonWidget(
              text: "Check Out",
              // width: 50.w,
              onPressed: () {
                Get.toNamed(Routes.paymentScreen);
              },
              //  iconData: Icons.shopify,
            ),
          ],
        ),
      );
    });
  }
}
