// ignore_for_file: unused_local_variable

import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/services/product_services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProductController extends GetxController {
  var prudctsList = <ProductModel>[].obs;
  var favoriateList = <ProductModel>[].obs;
  var isLoading = true.obs;
  var storage = GetStorage();
  //var isFavoraite = true.obs;
  //search Variable
  var searchList = <ProductModel>[].obs;
  TextEditingController searchController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    getProducts();

    List? storedShoppings = storage.read<List>("isFavoraiteItemList");
    if (storedShoppings != null) {
      favoriateList =
          storedShoppings.map((e) => ProductModel.fromJson(e)).toList().obs;
    }
  }

  void getProducts() async {
    var products = await ProductServices.getProduct();

    try {
      //isLoading.value = true;
      isLoading(true);
      if (products.isNotEmpty) {
        prudctsList.addAll(products);
      }
    } finally {
      isLoading(false);
    }
  }

  void manageFavoraiteis(num productId) async {
    // isFavoraite.value = !isFavoraite.value;
    var removeFavoraite =
        favoriateList.indexWhere((element) => element.id == productId);

    var addFavoraite =
        prudctsList.firstWhere((element) => element.id == productId);

    if (removeFavoraite >= 0) {
      favoriateList.removeAt(removeFavoraite);
      await storage.remove('isFavoraiteItemList');
    } else {
      favoriateList.add(addFavoraite);
      await storage.write("isFavoraiteItemList", favoriateList);
    }
  }

  bool isFavoraite(num productId) {
    return favoriateList.any((element) => element.id == productId);
  }

  void addSearchToList(String searchName) {
    searchName = searchName.toUpperCase();

    searchList.value = prudctsList.where((search) {
      var searchTitle = search.title.toString().toUpperCase();
      var searchPrice = search.price.toString().toUpperCase();

      return search.title.toString().contains(searchName) ||
          search.price.toString().contains(searchName);
    }).toList();
  }

  void clearSearch() {
    searchController.clear();
    addSearchToList("");
  }
}
