import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final String? text;
  final String? hint;
  final bool? obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  CustomTextFormField({
    this.text,
    this.hint,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: text,
          fontsize: 14,
          color: Colors.grey.shade900,
        ),
        TextField(
          keyboardType: keyboardType,
          obscureText: obscureText!,
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            fillColor: Colors.white,
          ),
        )
      ],
    );
  }
}
