import 'package:ecommerce/logic/controller/category_controller.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key});

  final controller = Get.find<CategoryController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isCategoryLoading.value) {
        return const Center(child: CircularProgressIndicator());
      } else {
        return ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  // Get.to(Category());
                },
                child: Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: whiteClr,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(
                          //"https://cdn.pixabay.com/photo/2023/06/22/15/17/cat-8081701_1280.jpg",
                          controller.listImage[index],
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextUtils(
                        text: controller.listCateg[index],
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: whiteClr),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
            itemCount: controller.listCateg.length);
      }
    });
  }
}
