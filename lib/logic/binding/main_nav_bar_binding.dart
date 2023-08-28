import 'package:ecommerce/logic/controller/payment_controller.dart';
import 'package:ecommerce/logic/controller/setting_controller.dart';
import 'package:get/get.dart';

import '../controller/navigation_bar_controller.dart';

class MainNavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainNavBarController());
    Get.put(SettingController());
    Get.put(
      PaymentController(),
    );
  }
}
