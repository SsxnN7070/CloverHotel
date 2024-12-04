import 'package:clover_hotel_clone/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';

class RegisterView extends GetView {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: KStyle.cWhite,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            Center(
              child: Image.asset(
                'assets/images/clover_text_logo.png',
                height: 100,
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              decoration: BoxDecoration(
                color: KStyle.cPrimary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Register',
                      style: KStyle.t16PTextStyle.copyWith(
                        fontWeight: FontWeight.w700,
                        color: KStyle.cWhite,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'To get access booking',
                      style: KStyle.t14PTextStyle.copyWith(
                        color: KStyle.cWhite,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Name',
                      style: KStyle.t14PTextStyle.copyWith(
                        color: KStyle.cWhite,
                      ),
                    ),
                    const SizedBox(height: 8),
                    RegisterTextField(
                      hintText: 'Eddie',
                      onChanged: (String value) {},
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Name',
                      style: KStyle.t14PTextStyle.copyWith(
                        color: KStyle.cWhite,
                      ),
                    ),
                    const SizedBox(height: 8),
                    RegisterTextField(
                      hintText: 'Eddie',
                      onChanged: (String value) {},
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Phone Number',
                      style: KStyle.t14PTextStyle.copyWith(
                        color: KStyle.cWhite,
                      ),
                    ),
                    const SizedBox(height: 8),
                    RegisterTextField(
                      hintText: '09249824929',
                      onChanged: (String value) {},
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'NRC',
                      style: KStyle.t14PTextStyle.copyWith(
                        color: KStyle.cWhite,
                      ),
                    ),
                    const SizedBox(height: 8),
                    RegisterTextField(
                      hintText: '12/KAMAYA(N)0939912',
                      onChanged: (String value) {},
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 52,
                      width: size.width,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: KStyle.cAccent,
                          ),
                          onPressed: () {},
                          child: Text(
                            'Register',
                            style: KStyle.t16PTextStyle.copyWith(
                              fontWeight: FontWeight.w700,
                              color: KStyle.cWhite,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.off(() => const LoginView());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account? ",
                            style: KStyle.t14WTextStyle,
                          ),
                          Text("Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RegisterTextField extends StatelessWidget {
  const RegisterTextField({
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
    return TextFormField(
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
    );
  }
}
