import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/screen/sign_page.dart';
import 'package:ecommerce/view/widget/text_button_widget.dart';
// import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 00),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80.r),
                    bottomRight: Radius.circular(30.r),
                  ),
                  color: Get.isDarkMode ? mainColor : mainColor,
                ),
                child: Row(
                  children: [
                    Image.network(
                      "https://cdni.iconscout.com/illustration/premium/thumb/woman-doing-online-shopping-3678723-3098921.png",
                      height: 170.h,
                      width: 240.w,
                      //color: whiteClr,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                //  height: MediaQuery.of(context).size.height / 2.5,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(143, 148, 251, .2),
                          blurRadius: 20.0,
                          offset: Offset(0, 10))
                    ]),
                child: Column(
                  children: <Widget>[
                    Container(
                      //    padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey.shade100))),
                      child: TextFormField(
                        autocorrect: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email or Phone number",
                            hintStyle: TextStyle(color: Colors.grey[500])),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      //  padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        autocorrect: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey[500])),
                      ),
                    ),
                    Container(
                      //  padding: const EdgeInsets.only(bottom: 0.0, top: 0),
                      child: TextFormField(
                        autocorrect: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Phone",
                            hintStyle: TextStyle(color: Colors.grey[500])),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextButtonWidget(
                      onPressed: () {
                        Get.toNamed(Routes.mainScreen);
                      },
                      text: 'Login',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("I Have A Account"),
                        SizedBox(
                          width: 5.h,
                        ),
                        InkWell(
                          onTap: () {
                            Get.off(const SigninPage());
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                color: mainColor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
