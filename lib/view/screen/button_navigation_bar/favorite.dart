// ignore_for_file: deprecated_member_use

import 'package:ecommerce/logic/controller/product_controller.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/utils/constant/images.dart';
import 'package:ecommerce/view/widget/text_overFlow.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FavoriteNavBar extends StatelessWidget {
  FavoriteNavBar({super.key});

  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: Obx(() {
          if (controller.favoriateList.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageAsset.heart_Image,
                    scale: 3,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextUtils(
                      text: "Please Add Your Favorites",
                      fontSize: 22.r,
                      fontWeight: FontWeight.w400,
                      color: Get.isDarkMode ? whiteClr : darkGreyClr)
                ],
              ),
            );
          } else {
            return ListView.separated(
                itemBuilder: (context, index) {
                  return buildFavoraiteItem(
                    image: controller.favoriateList[index].image!,
                    title: controller.favoriateList[index].title!,
                    price: controller.favoriateList[index].price!,
                    productId: controller.favoriateList[index].id!,
                  );
                },
                separatorBuilder: (context, index) {
                  return Container();
                },
                itemCount: controller.favoriateList.length);
          }
        }));
  }

  Widget buildFavoraiteItem({
    required String image,
    required String title,
    required num price,
    required num productId,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: 5.r, right: 5.r, top: 5.r),
      child: Container(
        width: double.infinity,
        height: 100.h,
        decoration: BoxDecoration(
            color: Get.isDarkMode
                ? whiteClr.withOpacity(0.9.r)
                : Colors.grey.withOpacity(0.3.r),
            borderRadius: BorderRadius.circular(10.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    //  "https://cdn.pixabay.com/photo/2023/06/22/15/17/cat-8081701_1280.jpg",
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextOverFlow(text: title),
                  SizedBox(
                    height: 15.h,
                  ),
                  TextOverFlow(text: '\$$price')
                ],
              ),
            ),
            SizedBox(
              width: 0.w,
            ),
            IconButton(
                onPressed: () {
                  controller.manageFavoraiteis(productId);
                },
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30.r,
                ))
          ],
        ),
      ),
    );
  }
}
