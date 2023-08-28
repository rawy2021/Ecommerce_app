// ignore_for_file: unused_element, non_constant_identifier_names

import 'package:ecommerce/logic/controller/payment_controller.dart';
import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dlivary extends StatefulWidget {
  const Dlivary({super.key});

  @override
  State<Dlivary> createState() => _DlivaryState();
}

class _DlivaryState extends State<Dlivary> {
  final TextEditingController phoneController = TextEditingController();

  final controller = Get.find<PaymentController>();
  int radioPaymentIndex = 1;
  bool isChangeColor = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          builRadioPayment(
            title: 'Dlivary',
            name: 'Mohamed rawy',
            phone: controller.phoneNumber.value,
            address: controller.address.value,
            value: 1,
            onChange: (int? value) {
              setState(() {
                radioPaymentIndex = value!;
                isChangeColor = !isChangeColor;
              });
              controller.updatePosation();
            },
            color: isChangeColor ? whiteClr : offWhite,
            icon: Container(),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(
            () => builRadioPayment(
              title: 'Dlivary',
              name: 'Mohamed rawy',
              phone: controller.phoneNumber.value,
              address: controller.address.value,
              value: 2,
              onChange: (int? value) {
                setState(() {
                  radioPaymentIndex = value!;
                  isChangeColor = !isChangeColor;
                });
                controller.updatePosation();
              },
              color: isChangeColor ? offWhite : whiteClr,
              icon: InkWell(
                onTap: () {
                  Get.defaultDialog(
                      title: 'Enter Your Phone Number',
                      titleStyle: const TextStyle(
                        fontSize: 16,
                        color: darkGreyClr,
                        fontWeight: FontWeight.w500,
                      ),
                      backgroundColor: Get.isDarkMode ? offWhite : whiteClr,
                      radius: 10,
                      textCancel: 'Cancel',
                      confirmTextColor: darkGreyClr,
                      textConfirm: 'Save',
                      cancelTextColor: darkGreyClr,
                      onCancel: () {
                        Get.toNamed(Routes.paymentScreen);
                      },
                      onConfirm: () {
                        Get.back();
                        controller.phoneNumber.value = phoneController.text;
                      },
                      buttonColor: Get.isDarkMode ? mainColor : mainColor,
                      content: Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextField(
                          controller: phoneController,
                          cursorColor: darkGreyClr,
                          keyboardType: TextInputType.text,
                          maxLength: 11,
                          onSubmitted: (value) {
                            phoneController.text = value;
                          },
                          decoration: InputDecoration(
                            fillColor: Get.isDarkMode
                                ? darkGreyClr.withOpacity(0.2)
                                : mainColor.withOpacity(0.3),
                            prefixIcon: const Icon(Icons.phone),
                            prefixIconColor:
                                Get.isDarkMode ? darkGreyClr : mainColor,
                            suffixIcon: IconButton(
                                onPressed: () {
                                  phoneController.clear();
                                },
                                icon: const Icon(
                                  Icons.close_outlined,
                                  color: darkGreyClr,
                                )),
                            hintText: 'Enter Your Phone Number',
                            hintStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color:
                                    Get.isDarkMode ? darkGreyClr : darkGreyClr),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: whiteClr),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: whiteClr),
                                borderRadius: BorderRadius.circular(10)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: whiteClr),
                                borderRadius: BorderRadius.circular(10)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: whiteClr),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ));
                },
                child: Icon(
                  Icons.phone_callback_outlined,
                  color: Get.isDarkMode ? darkGreyClr : mainColor,
                ),
              ),
              //  controller.updatePosation();
            ),
          )
        ],
      ),
    );
  }

  Widget builRadioPayment({
    required String title,
    required String phone,
    required String name,
    required String address,
    required int value,
    required Function onChange,
    required Color color,
    required Widget icon,
  }) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: MediaQuery.of(context).size.height * 0.180,
      width: MediaQuery.of(context).size.width,
      //color: offWhite,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            10,
          ),
          boxShadow: const [
            BoxShadow(color: offWhite, spreadRadius: 0.4, blurRadius: 0.5),
          ]),

      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
              value: value,
              groupValue: radioPaymentIndex,
              fillColor: MaterialStateColor.resolveWith((states) => mainColor),
              onChanged: (int? value) {
                onChange(value);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextUtils(
                        text: title,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: darkGreyClr),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: TextUtils(
                        text: name,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: darkGreyClr),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Text("🇪🇬 +02 "),
                        TextUtils(
                            text: phone,
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: darkGreyClr),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 120,
                          child: icon,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: TextUtils(
                        text: address,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: darkGreyClr),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
