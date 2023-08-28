import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';

class PaymentMethoudWidget extends StatefulWidget {
  const PaymentMethoudWidget({super.key});

  @override
  State<PaymentMethoudWidget> createState() => _PaymentMethoudWidgetState();
}

class _PaymentMethoudWidgetState extends State<PaymentMethoudWidget> {
  int radioPaymentIndex = 1;
  bool isChangeColor = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 15),
      child: Column(
        children: [
          builRadioPayment(
            name: 'PayPal',
            scale: 0.7,
            image: 'assets/images/paypal.png',
            value: 1,
            onChange: (int? value) {
              setState(() {
                radioPaymentIndex = value!;
                isChangeColor = !isChangeColor;
              });
            },
            color: isChangeColor ? whiteClr : offWhite,
          ),
          const SizedBox(
            height: 10,
          ),
          // builRadioPayment(
          //   name: 'Google',
          //   scale: 0.8,
          //   image: 'assets/images/google.png',
          //   value: 2,
          //   onChange: (int? value) {
          //     setState(() {
          //       radioPaymentIndex = value!;
          //       isChangeColor = !isChangeColor;
          //     });
          //   },
          //   color: isChangeColor ? offWhite : whiteClr,
          // ),
          const SizedBox(
            height: 10,
          ),
          builRadioPayment(
            name: 'stripe',
            scale: 0.7,
            image: 'assets/images/credit.png',
            value: 2,
            onChange: (int? value) {
              setState(() {
                radioPaymentIndex = value!;
                isChangeColor = !isChangeColor;
              });
            },
            color: isChangeColor ? offWhite : whiteClr,
          ),
        ],
      ),
    );
  }

  Widget builRadioPayment({
    required String image,
    required double scale,
    required String name,
    required int value,
    required Function onChange,
    required Color color,
  }) {
    return Container(
      height: 50,
      width: double.infinity,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            image,
            scale: scale,
          ),
          const SizedBox(
            width: 10,
          ),
          TextUtils(
              text: name,
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: darkGreyClr),
          Radio(
            value: value,
            groupValue: radioPaymentIndex,
            fillColor: MaterialStateColor.resolveWith((states) => mainColor),
            onChanged: (int? value) {
              onChange(value);
            },
          ),
        ],
      ),
    );
  }
}
