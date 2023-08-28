import 'package:ecommerce/utils/constant/color.dart';
import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) validate;
  final String hintText;
  final String labelText;
  final Widget suffixIcon;
  final Widget? prefixIcon;
  final bool isObscureText;

  const AuthTextFormField(
      {super.key,
      required this.controller,
      required this.validate,
      required this.hintText,
      required this.labelText,
      required this.suffixIcon,
      this.prefixIcon,
      required this.isObscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        controller: controller,
        validator: validate,
        cursorColor: kColor1,
        obscureText: isObscureText,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            fillColor: Colors.grey.shade100,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            hintText: hintText,
            filled: true,
            hintStyle: const TextStyle(
              color: kColor1,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: whiteClr,
                ),
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
