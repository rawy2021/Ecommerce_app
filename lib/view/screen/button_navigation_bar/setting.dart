import 'package:ecommerce/view/widget/setting/dark_mode.dart';
import 'package:ecommerce/view/widget/setting/language.dart';
import 'package:ecommerce/view/widget/setting/log_out.dart';
import 'package:ecommerce/view/widget/setting/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controller/setting_controller.dart';

class SettingNavBar extends StatelessWidget {
  SettingNavBar({super.key});
  final SettingController controller = Get.put(SettingController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
        init: SettingController(),
        builder: (controller) {
          return Scaffold(
            //  backgroundColor: context.theme.backgroundColor,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Profile(),
                    const Divider(),
                    DarkMode(),
                    const Divider(),
                    Language(),
                    const Divider(),
                    const LogOutWidget(),
                    const Divider(),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
