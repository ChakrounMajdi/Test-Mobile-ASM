import 'package:flutter/material.dart';
import 'package:test_mobile_asm/constants.dart';

class InputFormField extends StatelessWidget {
  final String hintText;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  final IconData icon;
  const InputFormField(
      {Key? key,
      required this.hintText,
      required this.validator,
      this.icon = Icons.text_fields,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon),
      ),
      validator: validator,
      controller: controller,
    );
  }
}
