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
          onTap: () => Navigator.pop(context),
          child: SvgPicture.asset('assets/icons/circle_back.svg'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            Container(
              height: 160,
              width: 160,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'User ID: ',
                  style: KStyle.t16PTextStyle.copyWith(color: KStyle.cBlack),
                ),
                Text(
                  'sxnn10166',
                  style: KStyle.t18PTextStyle.copyWith(
                    color: KStyle.cBlack,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Form(
                child: Column(
                  children: [
                    AccountSettingTextField(hintText: 'Username', labelText: 'User Name'),
                    const SizedBox(height: 15),
                    AccountSettingTextField(hintText: 'Email', labelText: 'Email'),
                    const SizedBox(height: 15),
                    AccountSettingTextField(hintText: 'Phone Number', labelText: 'Phone Number'),
                    const SizedBox(height: 15),
                    AccountSettingTextField(hintText: 'Date of Birth', labelText: 'Date of Birth'),
                    const SizedBox(height: 15),
                    AccountSettingTextField(hintText: 'Password', labelText: 'Password', obscureText: true),
                    const SizedBox(height: 15),
                    AccountSettingTextField(hintText: 'Confirm Password', labelText: 'Confirm Password', obscureText: true),
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 44,
                        width: 150,
                        child: TextButton(
                          style: TextButton.styleFrom(backgroundColor: KStyle.cPrimary),
                          onPressed: () {},
                          child: Text(
                            'Update',
                            style: KStyle.t16PTextStyle.copyWith(color: KStyle.cWhite),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
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
    required this.labelText,
    this.obscureText = false,
  });

  final String hintText;
  final String labelText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      elevation: 3.0,
      shadowColor: KStyle.cF6Grey,
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: KStyle.t14PTextStyle.copyWith(color: KStyle.cGrey),
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
          suffixIcon: obscureText
              ? IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.visibility_off),
                )
              : null,
        ),
      ),
    );
  }
}