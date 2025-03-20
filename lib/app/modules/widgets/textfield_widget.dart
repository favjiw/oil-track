import 'package:flutter/material.dart';
import 'package:oiltrack/app/modules/shared/theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.suffixIcon,
    required this.keyboardType,
    required this.textInputAction,
    required this.controller,
  });

  final TextEditingController controller;
  final String hintText;
  final Widget suffixIcon;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      cursorColor: blue500,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        hintStyle: TextStyle(color: Colors.grey[500]),
        suffixIconColor: Colors.grey[500],
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8.0),
        ),
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
