import 'package:ecommerce/logic/controller/cart_controller.dart';
import 'package:ecommerce/view/widget/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddCart extends StatelessWidget {
  AddCart({
    Key? key,
    required this.price,
    required this.productModel,
  }) : super(key: key);

  final num price;
  final ProductModel productModel;

  final controller = Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 20.r),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TextUtils(
                  text: "Total",
                  fontSize: 18.r,
                  fontWeight: FontWeight.w500,
                  color: Get.isDarkMode ? whiteClr : darkGreyClr,
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextUtils(
                  text: " \$$price",
                  fontSize: 18.r,
                  fontWeight: FontWeight.w400,
                  color: Get.isDarkMode ? whiteClr : darkGreyClr,
                ),
              ],
            ),
            SizedBox(
              width: 10.w,
            ),
            TextButtonWidget(
                text: "Add To Card",
                //    iconData: Icons.shopping_cart_checkout,
                onPressed: () {
                  controller.addProductToCart(productModel);
                })
          ],
        ),
      ),
    );
  }
}
