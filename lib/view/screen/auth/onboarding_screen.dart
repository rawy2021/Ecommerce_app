import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //TextEditingController controller = TextEditingController();
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            isLastPage = index == 2;
          });
        },
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 30.r, bottom: 30.r),
              child: Column(
                children: [
                  TextUtils(
                      text: "Save Delivry",
                      fontSize: 24.r,
                      fontWeight: FontWeight.bold,
                      color: darkGreyClr),
                  SizedBox(
                    height: 50.h,
                  ),
                  Image.network(
                    "https://appcoup.com/assets/img/ecommerceapp/ecommerce-mobile-app-development.png",
                    width: MediaQuery.of(context).size.width,
                    height: 300.h,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0.r),
                      child: Text(
                        "User Onboarding refers to the process that starts \n from the first login of a new user and ends up ",
                        style: TextStyle(color: Colors.grey, fontSize: 14.r),
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.r, bottom: 30.r),
            child: Column(
              children: [
                TextUtils(
                    text: "Save Delivry",
                    fontSize: 24.r,
                    fontWeight: FontWeight.bold,
                    color: darkGreyClr),
                SizedBox(
                  height: 50.h,
                ),
                Image.network(
                  "https://www.instaacoders.com/wp-content/themes/Icnew/vendor/img/303-layers.png",
                  width: MediaQuery.of(context).size.width,
                  height: 300.h,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.r),
                    child: Text(
                      "User Onboarding refers to the process that starts \n from the first login of a new user and ends up ",
                      style: TextStyle(color: Colors.grey, fontSize: 14.r),
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.r, bottom: 30),
            child: Column(
              children: [
                TextUtils(
                    text: "Save Delivry",
                    fontSize: 24.r,
                    fontWeight: FontWeight.bold,
                    color: darkGreyClr),
                SizedBox(
                  height: 50.h,
                ),
                Image.network(
                  "https://appcoup.com/assets/img/ecommerceapp/mcommerce-app-development.png",
                  width: MediaQuery.of(context).size.width,
                  height: 300.h,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.r),
                    child: Text(
                      "User Onboarding refers to the process that starts \n from the first login of a new user and ends up ",
                      style: TextStyle(color: Colors.grey, fontSize: 14.r),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          )
        ],
      )),
      bottomSheet: isLastPage
          ? Container(
              width: double.infinity,
              height: 60.h,
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    backgroundColor: mainColor,
                    // maximumSize: const Size.fromHeight(80),
                    // minimumSize: Size.fromWidth(double.infinity),
                  ),
                  onPressed: () async {
                    // Get.to(HomeScreen());
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    "GET START",
                    style: TextStyle(fontSize: 20.r),
                  )),
            )
          : SizedBox(
              height: 80.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Get.to(HomeScreen());
                      controller.jumpToPage(2);
                    },
                    child: TextUtils(
                        text: "Skip",
                        fontSize: 18.r,
                        fontWeight: FontWeight.normal,
                        color: mainColor),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                          spacing: 16.r,
                          dotColor: Colors.grey,
                          activeDotColor: Colors.teal.shade600),
                      onDotClicked: ((index) => controller.animateToPage(index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.bounceInOut)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Get.to(HomeScreen());
                      controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.bounceInOut);
                    },
                    child: TextUtils(
                        text: "NEXT",
                        fontSize: 18.r,
                        fontWeight: FontWeight.normal,
                        color: mainColor),
                  ),
                ],
              ),
            ),
    );
  }
}

























// import 'package:ecommerce/routes/app_routes.dart';
// import 'package:ecommerce/utils/constant/color.dart';
// import 'package:ecommerce/utils/constant/images.dart';
// import 'package:ecommerce/view/widget/text_button_widget.dart';
// import 'package:ecommerce/view/widget/text_utils.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           body: Stack(
//         children: [
//           SizedBox(
//             width: double.infinity,
//             height: double.infinity,
//             child: Image.asset(
//               // "assets/images/background.png",
//               ImageAsset.backGround,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.only(top: 100),
//             color: Colors.black.withOpacity(0.2),
//             width: double.infinity,
//             height: double.infinity,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: 190,
//                   height: 60,
//                   decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.3),
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Center(
//                       child: TextUtils(
//                     text: 'Welcome'.tr,
//                     fontSize: 35,
//                     fontWeight: FontWeight.bold,
//                     color: whiteClr,
//                   )),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   width: 230,
//                   height: 60,
//                   decoration: BoxDecoration(
//                       color: darkGreyClr.withOpacity(0.3),
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       TextUtils(
//                         text: 'Rawy'.tr,
//                         fontSize: 35,
//                         fontWeight: FontWeight.bold,
//                         color: whiteClr,
//                       ),
//                       const SizedBox(
//                         width: 5,
//                       ),
//                       TextUtils(
//                         text: 'Store'.tr,
//                         fontSize: 35,
//                         fontWeight: FontWeight.bold,
//                         color: mainColor,
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 250,
//                 ),
//                 TextButtonWidget(
//                   iconData: Icons.arrow_circle_right_rounded,
//                   width: 250,
//                   text: 'Get Start'.tr,
//                   onPressed: () {
//                     Get.toNamed(Routes.mainScreen);
//                   },
//                 ),
//                 const SizedBox(
//                   height: 100,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     TextUtils(
//                         text: "Dont Have Account?".tr,
//                         fontSize: 22,
//                         fontWeight: FontWeight.normal,
//                         color: whiteClr),
//                     TextButton(
//                         onPressed: () {
//                           Get.toNamed(Routes.signupScreen);
//                         },
//                         child: TextUtils(
//                           textDecoration: TextDecoration.underline,
//                           text: 'Sign In'.tr,
//                           fontSize: 22,
//                           fontWeight: FontWeight.normal,
//                           color: mainColor,
//                         ))
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }
