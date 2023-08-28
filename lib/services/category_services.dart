import 'dart:core';

import 'package:ecommerce/model/category_model.dart';
import 'package:ecommerce/utils/constant/my_string.dart';
import 'package:http/http.dart' as http;

class CategoryServices {
  static Future<List<String>> getCategory() async {
    var response = await http.get(Uri.parse('$baseUrl/products/categories'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return categoryModelFromJson(jsonData);
      // var decodeData = jsonDecode(jsonData);
      // print('Number of books about http: $decodeData.');
      // return decodeData;
    } else {
      return throw Exception('Faild');
    }
  }
}
