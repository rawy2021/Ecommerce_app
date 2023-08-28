import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../logic/controller/signup_controller.dart';
import '../../utils/constant/color.dart';
import '../../utils/constant/images.dart';

class CheckWidget extends StatelessWidget {
  CheckWidget({super.key});
  final SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
        init: SignUpController(),
        builder: (controller) {
          return InkWell(
            onTap: () {
              controller.check();
            },
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: controller.isCheck
                  ? Get.isDarkMode
                      ? Image.asset(ImageAsset.checkImage)
                      : const Icon(
                          Icons.done,
                          color: darkGreyClr,
                          size: 30,
                        )
                  : Container(),
            ),
          );
        });
  }
}
