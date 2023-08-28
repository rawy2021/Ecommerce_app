
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isVisibility = false;
  bool isCheck = false;

  void visibility(){
    isVisibility = !isVisibility;
    update();
  }
  void check(){
    isCheck =!isCheck;
    update();
  }
}