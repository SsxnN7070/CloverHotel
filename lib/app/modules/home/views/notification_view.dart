import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';
import '../../../../widgets/button_splash.dart';

class NotificationView extends GetView {
  const NotificationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KStyle.cPrimary,
        title: Text(
          'Notification',
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
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 24),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.only(bottom: 8),
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: KStyle.cF6Grey,
            ),
            child: Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: KStyle.cWhite,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SvgPicture.asset('assets/icons/noti.svg'),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Promotion season start 12 Jan to 15 Jan',
                        style: KStyle.t14PTextStyle,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/clock.svg'),
                          const SizedBox(width: 4),
                          Text(
                            'Just now',
                            style: KStyle.t12PTextStyle.copyWith(
                              color: KStyle.cBlack,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
