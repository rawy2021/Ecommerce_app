import 'package:ecommerce/view/widget/product_details/add_cart.dart';
import 'package:ecommerce/view/widget/product_details/clothes_info.dart';
import 'package:ecommerce/view/widget/product_details/image_slider.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/model/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    Key? key,
    required this.productModel,
  }) : super(key: key);
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageSlider(
              imageUrl: productModel.image!,
            ),
            ClothesInfo(
              title: productModel.title!,
              productId: productModel.id!,
              rate: productModel.rating!.rate!,
              description: productModel.description!,
            ),
            // const SizeList(),
            AddCart(
              price: productModel.price!,
              productModel: productModel,
            ),
          ],
        ),
      ),
    ));
  }
}
