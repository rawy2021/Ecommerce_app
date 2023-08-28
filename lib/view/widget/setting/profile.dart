import 'package:ecommerce/logic/controller/setting_controller.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  final controller = Get.find<SettingController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 120,
              width: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: offWhite,
                  image: DecorationImage(
                      image: NetworkImage(
                        //"https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Z2lybHMlMjBwaG90b3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                        "https://images.unsplash.com/photo-1606122017369-d782bbb78f32?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z2lybHMlMjBwaG90b3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                      ),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextUtils(
                    text: controller.capitalizeName("sara".tr),
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Get.isDarkMode ? whiteClr : darkGreyClr),
                TextUtils(
                    text: "sara@gmail.com",
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Get.isDarkMode ? whiteClr : darkGreyClr)
              ],
            )
          ],
        )
      ],
    );
  }
}
