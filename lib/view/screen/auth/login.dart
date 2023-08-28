import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/utils/constant/my_string.dart';
import 'package:ecommerce/view/widget/auth/auth_text_form_field.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:ecommerce/view/widget/under_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../logic/controller/signup_controller.dart';
import '../../../utils/constant/color.dart';
import '../../../utils/constant/images.dart';
import '../../widget/text_button_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final SignUpController controller = Get.put(SignUpController());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Get.isDarkMode ? darkGreyClr : whiteClr,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1.3,
                  padding: EdgeInsets.only(left: 5.r, right: 5.r, top: 40.r),
                  child: Padding(
                    padding: EdgeInsets.all(12.0.r),
                    child: Form(
                      autovalidateMode: AutovalidateMode.always,
                      key: formKey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              TextUtils(
                                  text: 'LOGIN',
                                  fontSize: 22.r,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      Get.isDarkMode ? mainColor : darkGreyClr),
                            ],
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          Column(
                            children: [
                              AuthTextFormField(
                                controller: controller.emailController,
                                validate: (value) {
                                  if (!RegExp(validationEmail)
                                      .hasMatch(value!)) {
                                    return "Enter Valid Email";
                                  } else {
                                    return null;
                                  }
                                },
                                hintText: "Email",
                                labelText: "labelText",
                                suffixIcon: const Text(""),
                                prefixIcon: Get.isDarkMode
                                    ? Image.asset(ImageAsset.email_Image)
                                    : const Icon(
                                        Icons.email_outlined,
                                        color: darkGreyClr,
                                      ),
                                isObscureText: false,
                              ),
                              GetBuilder<SignUpController>(
                                  init: SignUpController(),
                                  builder: (controller) {
                                    return AuthTextFormField(
                                      controller: controller.passwordController,
                                      validate: (value) {
                                        if (value.toString().length < 6) {
                                          return "Enter 6 Character and Number";
                                        } else {
                                          return null;
                                        }
                                      },
                                      hintText: "Password",
                                      labelText: "labelText",
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            controller.visibility();
                                          },
                                          icon: controller.isVisibility
                                              ? const Icon(Icons.visibility_off)
                                              : const Icon(Icons.visibility)),
                                      prefixIcon: Get.isDarkMode
                                          ? Image.asset(ImageAsset.lock_Image)
                                          : const Icon(
                                              Icons.lock,
                                              color: darkGreyClr,
                                            ),
                                      isObscureText: controller.isVisibility
                                          ? false
                                          : true,
                                    );
                                  }),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                height: 20.h,
                                child: Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      Get.toNamed(Routes.forgetPassword);
                                    },
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: TextUtils(
                                          text: "Forget Password",
                                          fontSize: 15.r,
                                          fontWeight: FontWeight.w400,
                                          color: Get.isDarkMode
                                              ? whiteClr
                                              : darkGreyClr),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: TextButtonWidget(
                                  text: 'SIGN UP',
                                  onPressed: () {
                                    //controller.visibility();
                                    Get.toNamed(Routes.mainScreen);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: TextUtils(
                                    text: "_OR_",
                                    fontSize: 18.r,
                                    fontWeight: FontWeight.w500,
                                    color: Get.isDarkMode
                                        ? whiteClr
                                        : darkGreyClr),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 70.w,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(10.r)),
                                      child:
                                          Image.asset(ImageAsset.google_Image),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 70.w,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(10.r)),
                                      child: Image.asset(
                                          ImageAsset.facebook_Image),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: UnderContainer(
            onTap: () {
              Get.toNamed(Routes.signupScreen);
            },
            text1: "Already Have An Account ?",
            text2: 'SIGN UP',
          )),
    );
  }
}
