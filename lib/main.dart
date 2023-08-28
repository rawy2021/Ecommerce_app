import 'package:device_preview/device_preview.dart';
import 'package:ecommerce/language/loclization.dart';
import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/utils/constant/color.dart';
import 'package:ecommerce/utils/constant/my_string.dart';
import 'package:ecommerce/view/widget/stripe_payment/stripe_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKeys;
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          locale: Locale(GetStorage().read<String>('lang').toString()),
          translations: LoclizationApp(),
          fallbackLocale: Locale(eng),
          title: 'Flutter Demo',
          theme: ThemeApp.light,
          darkTheme: ThemeApp.dark,
          initialRoute: AppRoutes.welcome,
          getPages: AppRoutes.route,
          // home: AnimatedSplashScreen(
          //   splash: Image.asset("assets/images/splashScreen.jpg"),
          //   nextScreen: SigninPage(),
          //   splashIconSize: 200,
          //   splashTransition: SplashTransition.rotationTransition,
          // ),
        );
      },
    );
  }
}
// AnimatedSplashScreen(
//           animationDuration: Duration(milliseconds: 3000),
//             splash:Image.asset("assets/images/background.png") ,
//             splashIconSize: 200,
//             splashTransition: SplashTransition.scaleTransition,
//             nextScreen: SignUpAuth()),