import 'package:ecommerce/language/arabice.dart';
import 'package:ecommerce/language/english.dart';
import 'package:ecommerce/language/french.dart';
import 'package:ecommerce/utils/constant/my_string.dart';
import 'package:get/get.dart';

class LoclizationApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        ara: ar,
        eng: en,
        fre: fr,
      };
}
