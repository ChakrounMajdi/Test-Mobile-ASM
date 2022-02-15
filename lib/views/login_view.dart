import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_asm/app_pages.dart';
import 'package:test_mobile_asm/controller/login_controller.dart';
import 'package:test_mobile_asm/styles.dart';
import 'package:test_mobile_asm/widget/input_form_field.dart';
import 'package:test_mobile_asm/widget/password_form_field.dart';

const _space = SizedBox(
  height: 25,
);

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: sViewPadding,
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: controller.loginFormKey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InputFormField(
                    hintText: 'Login',
                    icon: Icons.supervised_user_circle,
                    validator: controller.validateUsername,
                    controller: controller.usernameController,
                  ),
                  _space,
                  PasswordFormField(
                    hintText: 'Password',
                    validator: controller.validatePassword,
                    controller: controller.passwordController,
                  ),
                  _space,
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Get.toNamed(AppPages.FORGOT_PASSWORD);
                      },
                      child: const Text('Forgot password'),
                    ),
                  ),
                  _space,
                  ElevatedButton(
                      child: const Text('Login'),
                      onPressed: () {
                        controller.checkLogin();
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
