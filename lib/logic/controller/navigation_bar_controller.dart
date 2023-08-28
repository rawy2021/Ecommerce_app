import 'package:ecommerce/view/screen/cart/cart_screen.dart';
import 'package:get/get.dart';
import '../../view/screen/button_navigation_bar/favorite.dart';
import '../../view/screen/button_navigation_bar/home.dart';
import '../../view/screen/button_navigation_bar/setting.dart';

class MainNavBarController extends GetxController {
  RxInt currentIndex = 0.obs;

  final tabs = [
    const HomeNavBar(),
    CartScreen(),
    FavoriteNavBar(),
    SettingNavBar(),
  ].obs;

  final title = [
    'Rawy Shop',
    'Category',
    'Favorite',
    'Setting',
  ].obs;
}
                                    // const CategoryNavBar(),
