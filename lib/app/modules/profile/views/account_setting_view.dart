import 'package:clover_hotel_clone/app/modules/profile/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';
import '../../../../widgets/button_splash.dart';

class AccountSettingView extends GetView<ProfileController> {
  const AccountSettingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: KStyle.cPrimary,
        title: Text(
          'Account Setting',
          style: KStyle.t18PTextStyle.copyWith(
            fontWeight: FontWeight.w700,
            color: KStyle.cWhite,
          ),
        ),
        centerTitle: true,
        leading: SplashButton(
          iconSize: 12,
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            'assets/icons/circle_back.svg',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: KStyle.cGrey,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'User ID:  ',
                  style: KStyle.t16PTextStyle.copyWith(
                    color: KStyle.cBlack,
                  ),
                ),
                Text(
                  'CSRL10166',
                  style: KStyle.t18PTextStyle.copyWith(
                    color: KStyle.cBlack,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Form(
                child: Column(
                  children: [
                    AccountSettingTextField(
                      hintText: 'username',
                      labelText: 'User Name',
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 15),
                    AccountSettingTextField(
                      hintText: 'Email',
                      labelText: 'Email',
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 15),
                    AccountSettingTextField(
                      hintText: 'phone number',
                      labelText: 'Phone Number',
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 15),
                    AccountSettingTextField(
                      hintText: 'date of birth',
                      labelText: 'Date of Birth',
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 15),
                    PhysicalModel(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      elevation: 3.0,
                      shadowColor: KStyle.cF6Grey,
                      child: TextFormField(
                        onChanged: (value) {},
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: KStyle.t14PTextStyle.copyWith(
                            color: KStyle.cGrey,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.visibility_off)),
                          labelText: "Password",
                          labelStyle: KStyle.t16PTextStyle,
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
                    ),
                    const SizedBox(height: 15),
                    PhysicalModel(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      elevation: 3.0,
                      shadowColor: KStyle.cF6Grey,
                      child: TextFormField(
                        onChanged: (value) {},
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          hintStyle: KStyle.t14PTextStyle.copyWith(
                            color: KStyle.cGrey,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.visibility_off)),
                          labelText: "Confirm Password",
                          labelStyle: KStyle.t16PTextStyle,
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
                    ),
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 44,
                        width: 150,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Update',
                            style: KStyle.t16PTextStyle.copyWith(
                              color: KStyle.cWhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountSettingTextField extends StatelessWidget {
  const AccountSettingTextField({
    super.key,
    required this.hintText,
    required this.onChanged,
    this.obscureText = false,
    this.labelText,
  });

  final String hintText;
  final Function(String) onChanged;
  final bool obscureText;
  final String? labelText;

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
          labelText: labelText,
          labelStyle: KStyle.t16PTextStyle,
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
