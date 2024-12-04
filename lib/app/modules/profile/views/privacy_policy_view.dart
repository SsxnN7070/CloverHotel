import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';
import '../../../../widgets/button_splash.dart';

class PrivacyPolicyView extends GetView {
  const PrivacyPolicyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KStyle.cPrimary,
        title: Text(
          'Privacy Policy',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            Image.asset(
              'assets/images/clover_logo.png',
              width: 120,
            ),
            const SizedBox(height: 24),
            Text(
              'Lorem ipsum dolor sit amet consectetur. Eu lorem malesuada non sit cursus in purus nulla. Augue lorem fusce duis posuere vitae. Aliquet malesuada mauris morbi fames imperdiet dignissim. Dictumst tempor lacinia fermentum ultrices risus laoreet eu. Leo lobortis tristique auctor fermentum sed vivamus et laoreet ligula. Cursus massa semper risus urna. Nunc risus euismod amet mattis nulla dolor hendrerit nullam. Malesuada nibh molestie sagittis bibendum amet quam egestas in etiam. Nisi enim aliquet velit malesuada. Nisi dis aenean ipsum aliquam adipiscing et blandit.Malesuada nibh molestie sagittis bibendum amet quam egestas in etiam. Nisi enim aliquet velit malesuada. Nisi dis aenean ipsum aliquam adipiscing et blandit.',
              style: KStyle.t14PTextStyle.copyWith(
                color: KStyle.cBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
