import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_asm/controller/forgot_password_controller.dart';
import 'package:test_mobile_asm/widget/button_with_icon.dart';

class SendMailWidget extends GetWidget<ForgotPasswordController> {
  const SendMailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.sendMailFormKey,
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Please enter your email and we will send you a code to change your password',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 60,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'E-mail',
              prefixIcon: Icon(Icons.email),
            ),
            controller: controller.emailController,
            validator: controller.validateEmail,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 30,
          ),
          ButtonWithIcon(
            label: 'Continue',
            icon: Icons.navigate_next,
            onTap: () {
              controller.submitSendToEmail();
            },
          )
        ],
      ),
    );
  }
}
