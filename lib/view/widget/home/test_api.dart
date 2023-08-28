// ignore_for_file: non_constant_identifier_names

import 'package:ecommerce/logic/controller/cart_controller.dart';
import 'package:ecommerce/logic/controller/product_controller.dart';
import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/utils/constant/images.dart';
import 'package:ecommerce/view/screen/product_details_screen.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

class TestCardItem extends StatelessWidget {
  TestCardItem({super.key});
  final controller = Get.find<ProductController>();
  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: CircularProgressIndicator(
            color: Get.isDarkMode ? whiteClr : mainColor,
          ),
        );
      } else {
        return Expanded(
          child: controller.searchList.isEmpty &&
                  controller.searchController.text.isNotEmpty
              ? Get.isDarkMode
                  ? Image.asset(ImageAsset.search_empty_dark_Image)
                  : Image.asset(ImageAsset.search_empry_light_Image)
              : GridView.builder(
                  itemCount: controller.searchList.isEmpty
                      ? controller.prudctsList.length
                      : controller.searchList.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250.r,
                    childAspectRatio: 0.8.r,
                    crossAxisSpacing: 6.r,
                    mainAxisSpacing: 9.r,

                    //mainAxisExtent: 2
                  ),
                  itemBuilder: (context, index) {
                    if (controller.searchList.isEmpty) {
                      return BuilCardItem(
                          image: controller.prudctsList[index].image!,
                          price: controller.prudctsList[index].price!,
                          rate: controller.prudctsList[index].rating!.rate!,
                          productId: controller.prudctsList[index].id!,
                          productModel: controller.prudctsList[index],
                          onTap: () {
                            Get.to(() => ProductDetailsScreen(
                                  productModel: controller.prudctsList[index],
                                ));
                          });
                    } else {
                      return BuilCardItem(
                          image: controller.searchList[index].image!,
                          price: controller.searchList[index].price!,
                          rate: controller.searchList[index].rating!.rate!,
                          productId: controller.searchList[index].id!,
                          productModel: controller.searchList[index],
                          onTap: () {
                            Get.to(() => ProductDetailsScreen(
                                  productModel: controller.searchList[index],
                                ));
                          });
                    }
                  }),
        );
      }
    });
  }

  Widget BuilCardItem({
    required String image,
    required num price,
    required num rate,
    required num productId,
    required ProductModel productModel,
    required Function() onTap,
  }) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Get.isDarkMode ? whiteClr : whiteClr,
                boxShadow: [
                  BoxShadow(
                      color: offWhite, spreadRadius: 4.0.r, blurRadius: 5.0.r)
                ]),
            child: Column(
              children: [
                Obx(() {
                  return SizedBox(
                    //height: 20,
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //  controller.isFavoraite.value
                          IconButton(
                            onPressed: () {
                              controller.manageFavoraiteis(productId);
                            },
                            icon: controller.isFavoraite(productId)
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : const Icon(
                                    Icons.favorite_outline,
                                    color: Colors.red,
                                  ),
                          ),

                          IconButton(
                            onPressed: () {
                              cartController.addProductToCart(productModel);
                            },
                            icon: const Icon(
                              Icons.shopping_cart_rounded,
                              color: darkGreyClr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0.r),
                    child: Container(
                      width: double.infinity,
                      height: 150.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.network(
                        image,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.r, left: 10, bottom: 10),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextUtils(
                            text: '\$$price',
                            //text: '\$22',
                            fontSize: 10.r,
                            fontWeight: FontWeight.normal,
                            color: darkGreyClr),
                        Container(
                          //height: 20.h,
                          //  width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            color: mainColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: 5.r, left: 5.r),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextUtils(
                                    text: '$rate',
                                    //text: '4.5',
                                    fontSize: 10.r,
                                    fontWeight: FontWeight.w300,
                                    color: whiteClr),
                                Icon(
                                  Icons.star,
                                  size: 13.r,
                                  color: whiteClr,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
