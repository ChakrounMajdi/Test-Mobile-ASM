import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_asm/controller/forgot_password_controller.dart';
import 'package:test_mobile_asm/widget/password_form_field.dart';

class ChangeNewPasswordWidget extends GetWidget<ForgotPasswordController> {
  const ChangeNewPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.createNewPassFormKey,
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const Text('Please enter your new password',
            textAlign: TextAlign.center),
        const SizedBox(
          height: 60,
        ),
        PasswordFormField(
          hintText: 'Password',
          validator: controller.validateNewPassword,
          controller: controller.passwordController,
        ),
        const SizedBox(
          height: 20,
        ),
        PasswordFormField(
          hintText: 'Confirm password',
          validator: controller.validateNewPassword,
          controller: controller.confirmPasswordController,
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () {
              controller.submitChangeNewPassword();
            },
            child: const Text('Valider'))
      ]),
    );
  }
}
