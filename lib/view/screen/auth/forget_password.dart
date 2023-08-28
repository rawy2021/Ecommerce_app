import 'package:ecommerce/view/widget/auth/auth_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../logic/controller/signup_controller.dart';
import '../../../routes/app_routes.dart';
import '../../../utils/constant/color.dart';
import '../../../utils/constant/images.dart';
import '../../widget/text_utils.dart';
import '../../widget/text_button_widget.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});
  final SignUpController controller = Get.put(SignUpController());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: darkGreyClr,
      appBar: AppBar(
        title: TextUtils(
            text: "Forget Password",
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Get.isDarkMode ? darkGreyClr : whiteClr),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Get.isDarkMode ? whiteClr : darkGreyClr,
        leading: IconButton(
          onPressed: () {
            Get.toNamed(Routes.loginScreen);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Get.isDarkMode ? darkGreyClr : whiteClr,
        ),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.close_outlined,
                      color: Get.isDarkMode ? darkGreyClr : whiteClr),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: TextUtils(
                    text:
                        "If You Want To Recover Your Account, Then Please Provide \n Your Email ID Below..",
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Get.isDarkMode ? darkGreyClr : whiteClr),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                ImageAsset.forgetpass_Image,
                width: 250,
              ),
              const SizedBox(
                height: 20,
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
                      //  onTapIcon: (){},
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
                      isObscureText: controller.isVisibility ? false : true,
                    );
                  }),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButtonWidget(text: 'SEND', onPressed: () {}),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
