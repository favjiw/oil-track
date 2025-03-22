import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:oiltrack/app/modules/login/controllers/login_controller.dart';
import 'package:oiltrack/app/modules/shared/theme.dart';

class PasswordTextField extends GetWidget<LoginController> {
  const PasswordTextField({
    super.key,
    required this.controllerField,
    required this.textInputAction,
    required this.hintText,
  });

  final String hintText;
  final TextEditingController controllerField;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        textInputAction: textInputAction,
        controller: controllerField,
        cursorColor: blue500,
        obscureText: controller.isPasswordHidden.value,
        keyboardType: TextInputType.visiblePassword,
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
          suffixIcon: IconButton(
            splashColor: Colors.transparent,
            onPressed: () {
              controller.isPasswordHidden.value =
                  !controller.isPasswordHidden.value;
            },
            icon: Icon(
              controller.isPasswordHidden.value
                  ? Icons.visibility_off_rounded
                  : Icons.visibility_rounded,
              color: Colors.grey[500],
            ),
          ),
        ),
      ),
    );
  }
}
