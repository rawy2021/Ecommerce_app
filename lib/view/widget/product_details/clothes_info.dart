import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ecommerce/logic/controller/product_controller.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:readmore/readmore.dart';

class ClothesInfo extends StatelessWidget {
  final String title;
  final num productId;
  final dynamic rate;
  final String description;
  ClothesInfo({
    Key? key,
    required this.title,
    required this.productId,
    required this.rate,
    required this.description,
  }) : super(key: key);

  final controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 10.r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextUtils(
                  text: title,
                  fontSize: 20.r,
                  fontWeight: FontWeight.w300,
                  color: Get.isDarkMode ? whiteClr : darkGreyClr,
                  textOverflow: TextOverflow.ellipsis,
                ),
              ),
              Obx(() {
                return Container(
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Get.isDarkMode ? whiteClr : offWhite,
                  ),
                  child: InkWell(
                    onTap: () {
                      controller.manageFavoraiteis(productId);
                    },
                    child: controller.isFavoraite(productId)
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_outline,
                            color: darkGreyClr,
                          ),
                  ),
                );
              })
            ],
          ),
          Row(
            children: [
              TextUtils(
                  text: '$rate',
                  fontSize: 15.r,
                  fontWeight: FontWeight.w300,
                  color: Get.isDarkMode ? whiteClr : darkGreyClr),
              RatingBarIndicator(
                rating: rate,
                itemCount: 5,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          ReadMoreText(
            description,
            textAlign: TextAlign.justify,
            trimLines: 3,
            trimMode: TrimMode.Line,
            trimCollapsedText: "...Show More",
            trimExpandedText: "...Show Less",
            lessStyle: TextStyle(
              fontWeight: FontWeight.w500,
              color: Get.isDarkMode ? whiteClr : mainColor,
            ),
            moreStyle: TextStyle(
              fontWeight: FontWeight.w500,
              color: Get.isDarkMode ? whiteClr : mainColor,
            ),
            style: TextStyle(
              fontSize: 15.r,
              height: 1.5.r,
              fontWeight: FontWeight.w400,
              color: Get.isDarkMode ? whiteClr : darkGreyClr,
            ),
          )
        ],
      ),
    );
  }
}
