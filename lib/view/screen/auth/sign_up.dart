import 'package:ecommerce/view/widget/auth/auth_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../logic/controller/signup_controller.dart';
import '../../../routes/app_routes.dart';
import '../../../utils/constant/color.dart';
import '../../../utils/constant/images.dart';
import '../../../utils/constant/my_string.dart';
import '../../widget/check_widget.dart';
import '../../widget/text_utils.dart';
import '../../widget/text_button_widget.dart';
import '../../widget/under_container.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

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
                  padding: EdgeInsets.only(left: 25.r, right: 25.r, top: 40.r),
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
                                  text: 'SIGN UP'.tr,
                                  fontSize: 22.r,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      Get.isDarkMode ? mainColor : darkGreyClr),
                            ],
                          ),
                          SizedBox(
                            height: 100.h,
                          ),
                          Column(
                            children: [
                              AuthTextFormField(
                                controller: controller.nameController,
                                validate: (value) {
                                  if (value.toString().length <= 2 ||
                                      !RegExp(validationName)
                                          .hasMatch(value!)) {
                                    return "Enter Valid Name".tr;
                                  } else {
                                    return null;
                                  }
                                },
                                hintText: "User Name".tr,
                                labelText: "labelText",
                                suffixIcon: const Text(""),
                                prefixIcon: Get.isDarkMode
                                    ? Image.asset(ImageAsset.user_Image)
                                    : const Icon(
                                        Icons.person,
                                        color: darkGreyClr,
                                      ),
                                isObscureText: false,
                              ),
                              AuthTextFormField(
                                controller: controller.emailController,
                                validate: (value) {
                                  if (!RegExp(validationEmail)
                                      .hasMatch(value!)) {
                                    return "Enter Valid Email".tr;
                                  } else {
                                    return null;
                                  }
                                },
                                //  onTapIcon: (){},
                                hintText: "Email".tr,
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
                                          return "Enter 6 Character and Number"
                                              .tr;
                                        } else {
                                          return null;
                                        }
                                      },
                                      hintText: "Password".tr,
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
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  CheckWidget(),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  TextUtils(
                                      text: 'I Accepted Terms & Condition'.tr,
                                      fontSize: 12.r,
                                      fontWeight: FontWeight.normal,
                                      color: kGrey)
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              TextButtonWidget(
                                text: 'SIGN UP'.tr,
                                onPressed: () {
                                  controller.check();
                                  controller.visibility();
                                },
                              ),
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
              Get.toNamed(Routes.loginScreen);
            },
            text1: "Already Have An Account ?",
            text2: 'Login',
          )),
    );
  }
}
