import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_asm/app_pages.dart';
import 'package:test_mobile_asm/views/covid_list_view.dart';

import '../app_pages.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController usernameController, passwordController;

  @override
  void onInit() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // usernameController.dispose();
    // passwordController.dispose();
    super.onClose();
  }

  String? validateUsername(String? username) {
    if (username?.isEmpty == true) {
      return 'Please enter username';
    }
    return null;
  }

  String? validatePassword(String? password) {
    String pattern = r'(?=.*[!@#$%^&*-+<>]).{8,}';
    RegExp regex = RegExp(pattern);
    if (password!.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(password)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (isValid == true) {
      ///loginFormKey.currentState!.save();
      Get.toNamed(AppPages.COVID);
    }
  }
}
