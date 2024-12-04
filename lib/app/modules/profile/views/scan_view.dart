import 'package:clover_hotel_clone/constants/color_style.dart';
import 'package:clover_hotel_clone/widgets/button_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ScanView extends GetView {
  const ScanView({super.key});

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
      body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(child: Image.asset('assets/images/scan.png')),
              SizedBox(
                height: 8,
              ),
              Text('Click "Scan" button and put QR code in the frame and pay'),
              Spacer(),
              SizedBox(
                height: 47,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  onPressed: () {
                    // Get.to(() => const ReservationSuccessView());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Scan',
                        style: KStyle.t18PTextStyle.copyWith(
                          color: KStyle.cWhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
