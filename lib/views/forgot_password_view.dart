import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_asm/controller/forgot_password_controller.dart';
import 'package:test_mobile_asm/styles.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forgot password',
        ),
      ),
      body: Padding(
        padding: sViewPadding,
        child: Center(
          child: SingleChildScrollView(
            child: GetBuilder<ForgotPasswordController>(
              builder: (controller) {
                return controller.viewContent;
              },
            ),
          ),
        ),
      ),
    );
  }
}
