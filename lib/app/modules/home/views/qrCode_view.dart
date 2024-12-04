import 'package:clover_hotel_clone/constants/color_style.dart';
import 'package:clover_hotel_clone/widgets/button_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class QrcodeView extends GetView {
  const QrcodeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KStyle.cPrimary,
        title: Text(
          'Clover Street Royal Lake',
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
        padding: const EdgeInsets.all(32.0),
        child: Column(children: [
          Image.asset('assets/images/qrImg.png'),
          SizedBox(height: 20),
          SizedBox(
            height: 47,
            width: 240,
            child: TextButton(
              onPressed: () {
                Get.to('');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.download_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Download Image',
                    style: KStyle.t18PTextStyle.copyWith(
                      color: KStyle.cWhite,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
