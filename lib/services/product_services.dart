import 'dart:core';

import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/utils/constant/my_string.dart';
import 'package:http/http.dart' as http;

class ProductServices {
  static Future<List<ProductModel>> getProduct() async {
    var response = await http.get(Uri.parse('$baseUrl/products'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return productModelFromJson(jsonData);
      // var decodeData = jsonDecode(jsonData);
      // print('Number of books about http: $decodeData.');
      // return decodeData;
    } else {
      return throw Exception('Faild');
    }
  }
}
