import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  final String hintText;
  final String? Function(String?) validator;
  final TextEditingController? controller;

  const PasswordFormField({
    Key? key,
    required this.hintText,
    required this.validator,
    required this.controller,
  }) : super(key: key);

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _isPasswordVisible ? false : true,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: const Icon(Icons.lock_rounded),
        suffixIcon: IconButton(
          icon: Icon(
            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
        ),
      ),
      validator: widget.validator,
      controller: widget.controller,
    );
  }
}
