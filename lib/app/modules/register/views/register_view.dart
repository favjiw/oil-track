import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oiltrack/app/modules/shared/theme.dart';
import 'package:oiltrack/app/modules/widgets/button_widget.dart';
import 'package:oiltrack/app/modules/widgets/password_textfield_widget.dart';
import 'package:oiltrack/app/modules/widgets/textfield_widget.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            height:
                MediaQuery.of(
                  context,
                ).size.height, // Menyesuaikan dengan tinggi layar
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          SizedBox(height: 40.0),
                          Column(
                            children: [
                              Text(
                                'Register',
                                style: TextStyle(fontSize: 32.0),
                              ),
                              Text('Buat akun untuk memulai'),
                            ],
                          ),
                          SizedBox(height: 40.0),
                          CustomTextField(
                            hintText: 'Full Name',
                            suffixIcon: Icon(Icons.person_outline),
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            controller: controller.nameController,
                          ),
                          SizedBox(height: 16.0),
                          CustomTextField(
                            hintText: 'Email',
                            suffixIcon: Icon(Icons.email_outlined),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            controller: controller.emailController,
                          ),
                          SizedBox(height: 16.0),
                          CustomTextField(
                            hintText: 'Phone Number',
                            suffixIcon: Icon(Icons.phone),
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            controller: controller.phoneController,
                          ),
                          SizedBox(height: 16.0),
                          PasswordTextField(
                            hintText: 'Password',
                            controllerField: controller.passwordController,
                            textInputAction: TextInputAction.done,
                          ),
                          SizedBox(height: 16.0),
                          Obx(
                            () => Row(
                              children: [
                                Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: blue500,
                                  side: BorderSide(color: Colors.grey),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  value: controller.isChecked.value,
                                  onChanged: (value) {
                                    controller.isChecked.value = value!;
                                  },
                                ),
                                Flexible(
                                  child: RichText(
                                    text: TextSpan(
                                      text:
                                          'By checking the box you agree to our ',
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.black,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Terms',
                                          style: TextStyle(color: blue400),
                                        ),
                                        TextSpan(
                                          text: ' and ',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        TextSpan(
                                          text: 'Conditions.',
                                          style: TextStyle(color: blue400),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomButton(
                        onPressed: () {},
                        text: 'Register',
                        color: blue500,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account?',
                              style: TextStyle(fontSize: 12.0),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed('/login');
                              },
                              child: Text(
                                ' Login here',
                                style: TextStyle(
                                  color: blue500,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
