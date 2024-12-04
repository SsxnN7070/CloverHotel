import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';

class ReservationSuccessView extends GetView {
  const ReservationSuccessView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: KStyle.cWhite,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(),
          const SizedBox(height: 30),
          Image.asset(
            'assets/images/clover_text_logo.png',
            height: 120,
          ),
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: KStyle.cPrimary, width: 3.0),
            ),
            child: Icon(
              Icons.check_circle_outline,
              color: KStyle.cPrimary,
              size: 80,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Thank you for choosing us',
            style: KStyle.t18PTextStyle.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'We will inform you to confirm\nyour reservation in a short time',
            style: KStyle.t14PTextStyle.copyWith(
              color: KStyle.cAccent,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 170,
            height: 47,
            child: TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Go Back',
                style: KStyle.t18PTextStyle.copyWith(
                  color: KStyle.cWhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
