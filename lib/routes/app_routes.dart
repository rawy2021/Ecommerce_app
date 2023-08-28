import 'package:ecommerce/home_screen.dart';
import 'package:ecommerce/logic/binding/product_binding.dart';
import 'package:ecommerce/view/screen/auth/onboarding_screen.dart';
import 'package:ecommerce/view/screen/button_navigation_bar/main_screen.dart';
import 'package:ecommerce/view/screen/button_navigation_bar/setting.dart';
import 'package:ecommerce/view/screen/cart/cart_screen.dart';
import 'package:ecommerce/view/screen/payment/payment_screen.dart';
import 'package:get/get.dart';

import '../logic/binding/auth_binding.dart';
import '../logic/binding/main_nav_bar_binding.dart';
import '../view/screen/auth/forget_password.dart';
import '../view/screen/auth/login.dart';
import '../view/screen/auth/sign_up.dart';
// import '../view/screen/welcome.dart';

class AppRoutes {
  static const welcome = Routes.welcomeScreen;

  static final route = [
    GetPage(name: Routes.welcomeScreen, page: () => const OnBoardingScreen()),
    GetPage(name: Routes.homeScreen, page: () => const HomeScreen()),
    GetPage(name: Routes.loginScreen, page: () => LoginScreen()),
    GetPage(name: Routes.settingNavBar, page: () => SettingNavBar()),
    //GetPage(name: Routes.paymentScreen, page: () => PaymentScreen()),
    GetPage(
        name: Routes.signupScreen,
        page: () => SignupScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.forgetPassword,
        page: () => ForgetPassword(),
        binding: AuthBinding()),
    GetPage(name: Routes.mainScreen, page: () => MainScreen(), bindings: [
      AuthBinding(),
      MainNavBarBinding(),
      ProductBinding(),
    ]),
    GetPage(name: Routes.cartScreen, page: () => CartScreen(), bindings: [
      AuthBinding(),
      ProductBinding(),
    ]),

    GetPage(
        name: Routes.paymentScreen,
        page: () => const PaymentScreen(),
        bindings: [AuthBinding(), ProductBinding(), MainNavBarBinding()]),
  ];
}

class Routes {
  static const welcomeScreen = '/HomeScreen';
  static const homeScreen = '/HomeScreen';
  static const loginScreen = '/loginScreen';
  static const signupScreen = '/signUpScreen';
  static const forgetPassword = '/forgetPassword';
  static const mainScreen = '/mainScreen';
  static const cartScreen = '/cartScreen';
  static const settingNavBar = '/settingNavBar';
  static const paymentScreen = '/paymentScreen';
}
