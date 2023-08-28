import 'package:ecommerce/services/category_services.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  var categoryNameList = <String>[].obs;
  var isCategoryLoading = true.obs;

  List<String> listCateg = [
    "electronics",
    "jewelery",
    "men's clothing",
    "women's clothing"
  ];
  List<dynamic> listImage = [
    "https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg",
    "https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg",
    "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
    "https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg",
  ];

  @override
  void onInit() {
    getCatogries();
    super.onInit();
  }

  void getCatogries() async {
    var categoryName = await CategoryServices.getCategory();

    try {
      isCategoryLoading(true);
      if (categoryName.isEmpty) {
        categoryNameList.addAll(categoryName);
        //  print(categoryNameList);
      }
    } finally {
      isCategoryLoading(false);
    }
  }
}
