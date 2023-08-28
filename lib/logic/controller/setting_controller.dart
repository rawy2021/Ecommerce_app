import 'package:ecommerce/utils/constant/my_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingController extends GetxController {
  var storage = GetStorage();
  var localLange = eng;
  var isSwitched = false;
  final GetStorage switchedController = GetStorage();

  getSwitchedState() {
    // print('Constructor Called');
    if (switchedController.read('Getx Switch') != null) {
      isSwitched = switchedController.read('Getx Switch');
    }
  }

  changeSwitchedState(bool value) {
    isSwitched = value;
    switchedController.write('Getx Switch', isSwitched);

    Get.isDarkMode
        ? Get.changeThemeMode(ThemeMode.light)
        : Get.changeThemeMode(ThemeMode.dark);
  }

  ///profile
  String capitalizeName(String profileName) {
    return profileName.split(" ").map((e) => e.capitalize).join(" ");
  }

  //language

  @override
  void onInit() async {
    super.onInit();
    localLange = await getLanguage;
  }

  void saveChangeLang(String lang) async {
    await storage.write("lang", lang);
  }

  //Future<String>
  get getLanguage {
    return storage.read("lang");
  }

  //Language
  void getChangeLanguage(String typeLang) {
    // Get.updateLocale(Locale(typeLang));
    // update();
    saveChangeLang(typeLang);
    if (localLange == typeLang) {
      return;
    }
    if (typeLang == fre) {
      localLange = fre;
      saveChangeLang(fre);
    } else if (typeLang == ara) {
      localLange = ara;
      saveChangeLang(ara);
    } else {
      localLange = eng;
      saveChangeLang(eng);
    }
    update();
  }
}

// final GetStorage boxStorage = GetStorage();
// final key = 'isDarkMode';
//
// saveThemeDataInbox(bool isDark){
//   boxStorage.write(key,isDark);
// }
//
// bool getThemeDataFromBox(){
//   return boxStorage.read<bool>(key) ?? false;
// }
//
// ThemeMode get themeDataGet =>
//   getThemeDataFromBox() ? ThemeMode.dark : ThemeMode.light;
//
//   void changeTheme(){
//     Get.changeThemeMode(
//       getThemeDataFromBox()? ThemeMode.light : ThemeMode.dark
//     );
//     saveThemeDataInbox(!getThemeDataFromBox());
//   }
