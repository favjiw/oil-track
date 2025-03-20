import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oiltrack/app/modules/shared/theme.dart';
import 'package:oiltrack/app/modules/widgets/button_widget.dart';
import 'package:oiltrack/app/modules/widgets/password_textfield_widget.dart';
import 'package:oiltrack/app/modules/widgets/textfield_widget.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('Login', style: TextStyle(fontSize: 32.0)),
                            Text('Masuk untuk akses akunmu'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 40.0),
                    CustomTextField(
                      controller: controller.emailController,
                      hintText: 'Enter your email',
                      suffixIcon: Icon(Icons.email_outlined),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 16.0),
                    PasswordTextField(
                      controllerField: controller.passwordController,
                      textInputAction: TextInputAction.done,
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(fontSize: 12.0, color: blue300),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomButton(
                      onPressed: () {},
                      text: 'Login',
                      color: blue500,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don\'t have an account?'),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              ' Register now',
                              style: TextStyle(color: blue500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
