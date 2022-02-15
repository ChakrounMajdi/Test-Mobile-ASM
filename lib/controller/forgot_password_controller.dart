import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_asm/constants.dart';
import 'package:test_mobile_asm/widget/forgot_password/create_password_widget.dart';
import 'package:test_mobile_asm/widget/forgot_password/send_mail_widget.dart';
import 'package:test_mobile_asm/widget/forgot_password/verification_email_widget.dart';

class ForgotPasswordController extends GetxController {
  late Widget viewContent;
  late TextEditingController emailController,
      passwordController,
      codeController,
      confirmPasswordController;
  final GlobalKey<FormState> sendMailFormKey = GlobalKey();
  final GlobalKey<FormState> verificationFormKey = GlobalKey();
  final GlobalKey<FormState> createNewPassFormKey = GlobalKey();

  @override
  void onInit() {
    emailController = TextEditingController();
    codeController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    viewContent = const SendMailWidget();
    super.onInit();
  }

  String? validateEmail(String? email) {
    if (GetUtils.isEmail(email!)) {
      return null;
    } else {
      return 'Invalid Email';
    }
  }

  String? validateCode(String? code) {
    if (code?.length == 5) {
      return null;
    } else {
      return 'Invalid Code';
    }
  }

  String? validateNewPassword(_) {
    if (confirmPasswordController.text == passwordController.text) {
      return null;
    } else {
      return 'Invalid Password';
    }
  }

  submitSendToEmail() {
    final isValid = sendMailFormKey.currentState!.validate();
    if (isValid == true) {
      viewContent = const VerificationEmailWidget();
      update();
    }
  }

  submitEmailVerification() {
    final isValid = verificationFormKey.currentState!.validate();
    if (isValid == true) {
      viewContent = const ChangeNewPasswordWidget();
      update();
    }
  }

  submitChangeNewPassword() {
    final isValid = createNewPassFormKey.currentState!.validate();
    if (isValid == true) {
      Get.defaultDialog(
        title: "Change your password",
        middleText: "Password changed successfully",
        confirm: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            onPressed: () {
              Get.back();
            },
            child: const Text('Ok')),
        middleTextStyle: const TextStyle(color: kSuccessColor),
      );
    }
  }
}
