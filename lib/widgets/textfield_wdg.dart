import 'package:flutter/material.dart';

import '../configs/x_configs.dart';
import '../helpers/x_helpers.dart';

class MyTextFields extends StatelessWidget {
  final TextEditingController controller;
  final String label, hintText;
  final bool isObscure;
  const MyTextFields({
    super.key,
    required this.controller,
    required this.hintText,
    required this.label,
    required this.isObscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        hintStyle: getFont(14, color: kWhite),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kWhite),
        ),
        fillColor: Colors.grey[100],
        filled: true,
      ),
    );
  }
}
