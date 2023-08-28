import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:ecommerce/logic/controller/cart_controller.dart';
import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/widget/text_overFlow.dart';

class CartProductCard extends StatelessWidget {
  CartProductCard({
    Key? key,
    required this.productModel,
    required this.quantity,
    required this.index,
  }) : super(key: key);

  final ProductModel productModel;
  final int quantity;
  final int index;

  final controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: EdgeInsets.only(left: 5.r, right: 5.r, top: 5.r),
        child: Container(
          // margin: const EdgeInsets.only(top: 5, left: 10, right: 10),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 6,
          decoration: BoxDecoration(
            color: Get.isDarkMode
                ? whiteClr.withOpacity(0.9)
                : Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.r),
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: whiteClr,
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                        image: NetworkImage(productModel.image!),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextOverFlow(
                        text: productModel.title!,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextOverFlow(
                          text:
                              '\$${controller.productSubTitle[index].toStringAsFixed(2)}')
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            controller.removeProductFromCart(productModel);
                          },
                          icon: Icon(
                            Icons.remove_circle,
                            color: Get.isDarkMode ? darkGreyClr : darkGreyClr,
                          )),
                      TextOverFlow(text: "$quantity"),
                      //Text("$quantity"),
                      IconButton(
                          onPressed: () {
                            controller.addProductToCart(productModel);
                          },
                          icon: Icon(
                            Icons.add_circle,
                            color: Get.isDarkMode ? darkGreyClr : darkGreyClr,
                          )),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        controller.removeOneProduct(productModel);
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Get.isDarkMode ? darkGreyClr : Colors.red,
                      )),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
