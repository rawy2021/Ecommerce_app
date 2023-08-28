import 'package:ecommerce/logic/controller/product_controller.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchFormFiled extends StatelessWidget {
  SearchFormFiled({super.key});
  final controller = Get.find<ProductController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
        // init: ProductController(),
        builder: (_) {
      return TextField(
        controller: controller.searchController,
        cursorColor: darkGreyClr,
        keyboardType: TextInputType.text,
        onChanged: (searchName) {
          controller.addSearchToList(searchName);
          //print(searchName);
        },
        decoration: InputDecoration(
          fillColor: Get.isDarkMode ? darkGreyClr.withOpacity(0.7) : whiteClr,
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: offWhite.withOpacity(0.5),
          //  suffixIcon: controller.searchController.text.toString().isNotEmpty?
          suffixIcon: IconButton(
              onPressed: () {
                controller.clearSearch();
              },
              icon: const Icon(
                Icons.close_outlined,
                color: darkGreyClr,
              )),
          //: null,
          hintText: 'Search About Your Order',
          hintStyle: TextStyle(
              fontSize: 12.r,
              fontWeight: FontWeight.w200,
              color: Get.isDarkMode ? whiteClr : darkGreyClr),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: whiteClr),
              borderRadius: BorderRadius.circular(10.r)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: whiteClr),
              borderRadius: BorderRadius.circular(10.r)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: whiteClr),
              borderRadius: BorderRadius.circular(10.r)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: whiteClr),
              borderRadius: BorderRadius.circular(10.r)),
        ),
      );
    });
  }
}
