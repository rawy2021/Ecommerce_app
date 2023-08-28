import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var productMap = {}.obs;

  void addProductToCart(ProductModel productModel) {
    if (productMap.containsKey(productModel)) {
      productMap[productModel] += 1;
    } else {
      productMap[productModel] = 1;
    }
  }

  void removeProductFromCart(ProductModel productModel) {
    if (productMap.containsKey(productModel) && productMap[productModel] == 1) {
      productMap.removeWhere((key, value) => key == productModel);
    } else {
      productMap[productModel] -= 1;
    }
  }

  void removeOneProduct(ProductModel productModel) {
    productMap.removeWhere((key, value) => key == productModel);
  }

  void clearAllProduct() {
    // productMap.clear();

    Get.defaultDialog(
      title: "Clean Product",
      titleStyle: const TextStyle(
          fontSize: 13, fontWeight: FontWeight.bold, color: darkGreyClr),
      middleText: "Are You Sure Clear All Proudct",
      middleTextStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: darkGreyClr,
      ),
      backgroundColor: offWhite,
      radius: 10,
      textCancel: "NO",
      cancelTextColor: Get.isDarkMode ? darkGreyClr : whiteClr,
      textConfirm: "YES",
      confirmTextColor: whiteClr,
      onCancel: () {
        Get.toNamed(Routes.cartScreen);
      },
      onConfirm: () {
        productMap.clear();
        Get.back();
      },
      buttonColor: Get.isDarkMode ? darkGreyClr : mainColor,
    );
  }

  get productSubTitle =>
      productMap.entries.map((e) => e.key.price * e.value).toList();

  get total => productMap.entries
      .map((e) => e.key.price * e.value) // ضرب السعر في القيمة
      .toList()
      .reduce((value, element) => value + element) //لجمع القيم
      .toStringAsFixed(2); // لتقليل الارقام العشرية الي رقمين فق

  int quantity() {
    // if (productMap.isEmpty = 0) {
    //   return 0;
    // } else {
    if (productMap.isEmpty) {
      return 0;
    } else {
      return productMap.entries
          .map((e) => e.value)
          .toList()
          .reduce((value, element) => value + element);
    }

    // }
  }
}
