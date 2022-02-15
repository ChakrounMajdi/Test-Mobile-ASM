import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:test_mobile_asm/controller/forgot_password_controller.dart';
import 'package:test_mobile_asm/helpers.dart';
import 'package:test_mobile_asm/widget/button_with_icon.dart';

class VerificationEmailWidget extends GetWidget<ForgotPasswordController> {
  const VerificationEmailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.verificationFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              'Please enter the code sent to ${Helpers.hideEmail(controller.emailController.text)}'),
          const SizedBox(
            height: 60,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Code',
              prefixIcon: Icon(Icons.confirmation_number),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            controller: controller.codeController,
            validator: controller.validateCode,
            // onSaved: (value) {
            //   controller.username = value!;
            // },
          ),
          const SizedBox(
            height: 30,
          ),
          ButtonWithIcon(
            label: 'Continue',
            icon: Icons.navigate_next,
            onTap: () {
              controller.submitEmailVerification();
            },
          )
        ],
      ),
    );
  }
}
