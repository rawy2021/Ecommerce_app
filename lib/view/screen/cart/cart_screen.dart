// ignore_for_file: deprecated_member_use

import 'package:ecommerce/logic/controller/cart_controller.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/screen/button_navigation_bar/main_screen.dart';
import 'package:ecommerce/view/widget/cart/cart_product_card.dart';
import 'package:ecommerce/view/widget/cart/cart_total.dart';
import 'package:ecommerce/view/widget/cart/empty_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        // appBar: AppBar(
        //   backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
        //   elevation: 0,
        //   title: const Text('Cart Screen'),
        //   centerTitle: true,
        //   actions: [
        //     IconButton(
        //         onPressed: () {
        //           controller.clearAllProduct();
        //         },
        //         icon: const Icon(Icons.backspace)),
        //   ],
        // ),
        body: Obx(
          () {
            if (controller.productMap.isEmpty) {
              return const EmptyCart();
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              // controller.clearAllProduct();
                              Get.to(MainScreen());
                            },
                            icon: const Icon(Icons.arrow_back)),
                        IconButton(
                            onPressed: () {
                              controller.clearAllProduct();
                            },
                            icon: const Icon(
                              Icons.backspace,
                              color: darkGreyClr,
                            )),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.5,
                      child: Expanded(
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return CartProductCard(
                              productModel:
                                  controller.productMap.keys.toList()[index],
                              index: index,
                              quantity:
                                  controller.productMap.values.toList()[index],
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                            height: 2.h,
                          ),
                          itemCount: controller.productMap.length,
                        ),
                      ),
                    ),

                    // Container(
                    //   height: 100.h,
                    //   child: Expanded(
                    //     child: Padding(
                    //       padding: EdgeInsets.only(bottom: 50.r),
                    //       child: CartTotal(),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              );
            }
          },
        ),
        bottomNavigationBar: Container(
          height: 60.h,
          child: Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 0.r),
              child: CartTotal(),
            ),
          ),
        ),
      ),
    );
  }
}
