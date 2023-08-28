// ignore_for_file: deprecated_member_use

import 'package:ecommerce/view/widget/home/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryNavBar extends StatelessWidget {
  const CategoryNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(left: 15, top: 0),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              CategoryWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
