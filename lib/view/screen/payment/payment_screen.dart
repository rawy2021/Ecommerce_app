import 'package:ecommerce/logic/controller/cart_controller.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/widget/payment/dlivry.dart';
import 'package:ecommerce/view/widget/payment/payment_methoud.dart';
import 'package:ecommerce/view/widget/stripe_payment/payment_mangment.dart';
import 'package:ecommerce/view/widget/text_button_widget.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Get.isDarkMode ? whiteClr : mainColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              //  mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextUtils(
                    text: 'Shoping To',
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Get.isDarkMode ? whiteClr : darkGreyClr),
                const SizedBox(
                  height: 15,
                ),
                //const DeliveryContainerWidget(),
                // ignore: prefer_const_constructors
                Dlivary(),
                const SizedBox(
                  height: 15,
                ),
                TextUtils(
                    text: 'Payment Methoud',
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Get.isDarkMode ? whiteClr : darkGreyClr),
                const SizedBox(
                  height: 5,
                ),
                const PaymentMethoudWidget(),
                const SizedBox(
                  height: 30,
                ),
                Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtils(
                          text: '\$${controller.total}',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: darkGreyClr),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButtonWidget(
                          text: "Pay Now",
                          onPressed: () {
                            PaymentManager.makePayment(599, 'USD');
                            //  PaymentManager.makePayment(amount, currency)
                          }),
                    ],
                  );
                })
              ]),
        ),
      ),
    );
  }
}
