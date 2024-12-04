import 'package:clover_hotel_clone/app/modules/login/views/forgot_password_view.dart';
import 'package:clover_hotel_clone/app/modules/login/views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';

class LoginView extends GetView {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: KStyle.cWhite,
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 32),
          Center(
            child: Image.asset(
              'assets/images/clover_text_logo.png',
              height: 100,
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
              decoration: BoxDecoration(
                color: KStyle.cPrimary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: KStyle.cWhite,
                    ),
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Sign in',
                              style: KStyle.t18PTextStyle.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'User ID',
                            style: KStyle.t16PTextStyle.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 8),
                          LoginTextField(
                            hintText: 'User ID',
                            onChanged: (String value) {},
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Password',
                            style: KStyle.t16PTextStyle.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 8),
                          LoginTextField(
                            hintText: 'password',
                            obscureText: true,
                            onChanged: (String value) {},
                          ),
                          const SizedBox(height: 24),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => ForgotPasswordView());
                            },
                            child: Text(
                              "Forgot password?",
                              style: KStyle.t14BTextStyle,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 44,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: KStyle.cAccent,
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Login',
                                  style: KStyle.t16PTextStyle.copyWith(
                                    color: KStyle.cWhite,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const RegisterView());
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Don't have an account? ",
                                  style: KStyle.t14BTextStyle,
                                ),
                                Text("Register",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    super.key,
    required this.hintText,
    required this.onChanged,
    this.obscureText = false,
  });

  final String hintText;
  final Function(String) onChanged;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      elevation: 3.0,
      shadowColor: KStyle.cF6Grey,
      child: TextFormField(
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: KStyle.t14PTextStyle.copyWith(
            color: KStyle.cGrey,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: KStyle.cWhite,
        ),
      ),
    );
  }
}
