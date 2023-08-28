import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/logic/controller/cart_controller.dart';
import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/widget/product_details/color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  final String imageUrl;
  const ImageSlider({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final cartController = Get.find<CartController>();
  CarouselController carouselController = CarouselController();
  final List<Color> colorSelected = [
    kColor1,
    kColor2,
    kColor3,
    kColor4,
    kColor5
  ];
  int currentPage = 0;
  int currentColor = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: 3,
          carouselController: carouselController,
          options: CarouselOptions(
            height: 500.h,
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentPage = index;
              });
            },
            autoPlayInterval: const Duration(seconds: 2),
          ),
          itemBuilder: (context, index, realIndex) {
            return Container(
              margin: EdgeInsets.all(12.r),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.imageUrl), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: offWhite,
                      spreadRadius: 0.5.r,
                      blurRadius: 0.5.r,
                    )
                  ]),
            );
          },
        ),
        Positioned(
            bottom: 30.r,
            left: 150.r,
            child: AnimatedSmoothIndicator(
              activeIndex: currentPage,
              count: 3,
              effect: ExpandingDotsEffect(
                  dotHeight: 10.r,
                  dotWidth: 10.r,
                  activeDotColor: Get.isDarkMode ? mainColor : mainColor,
                  dotColor: darkGreyClr),
            )),
        Positioned(
          bottom: 30.r,
          right: 30.r,
          child: Container(
            height: 200.h,
            width: 50.w,
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              color: offWhite,
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentColor = index;
                      });
                    },
                    child: ColorPicker(
                        color: colorSelected[index],
                        outerBorder: currentColor == index),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 3,
                    ),
                itemCount: colorSelected.length),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 20.r,
            right: 25.r,
            left: 25.r,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Get.isDarkMode ? whiteClr : mainColor,
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Get.isDarkMode ? darkGreyClr : whiteClr,
                    size: 30.r,
                  ),
                ),
              ),
              Obx(() {
                return Badge(
                    label: Text(cartController.quantity().toString()),
                    backgroundColor: Get.isDarkMode ? whiteClr : mainColor,
                    child: IconButton(
                      onPressed: () {
                        Get.toNamed(Routes.cartScreen);
                      },
                      icon: InkWell(
                        onTap: () {
                          Get.toNamed(Routes.cartScreen);
                        },
                        child: Container(
                          //padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Get.isDarkMode ? whiteClr : mainColor,
                          ),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Get.isDarkMode ? darkGreyClr : whiteClr,
                            size: 30.r,
                          ),
                        ),
                      ),
                    ));
              })
            ],
          ),
        )
      ],
    );
  }
}
