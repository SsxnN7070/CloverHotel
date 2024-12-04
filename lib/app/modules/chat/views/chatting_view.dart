import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';
import '../../../../widgets/button_splash.dart';

class ChattingView extends GetView {
  const ChattingView({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KStyle.cPrimary,
        title: Text(
          'Royal Lake',
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
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.only(left: 24),
                    width: size.width * 0.6,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/clover_logo.png',
                          width: 33,
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: KStyle.cPrimary,
                            ),
                            child: Text(
                              'How can I have you?',
                              style: KStyle.t14PTextStyle.copyWith(
                                color: KStyle.cWhite,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.only(right: 24),
                    width: size.width * 0.6,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: KStyle.cAccent,
                            ),
                            child: Text(
                              'I want to know a price.',
                              style: KStyle.t14PTextStyle.copyWith(
                                color: KStyle.cWhite,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Image.asset(
                          'assets/images/clover_logo.png',
                          width: 33,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 51,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            margin: const EdgeInsets.only(bottom: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SplashButton(
                  onTap: () {},
                  child: SvgPicture.asset('assets/icons/arrow_right.svg'),
                ),
                const SizedBox(width: 3),
                Expanded(
                  child: PhysicalModel(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    elevation: 3.0,
                    shadowColor: KStyle.cF6Grey,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type Message',
                        hintStyle: KStyle.t14PTextStyle.copyWith(
                          color: KStyle.cGrey,
                        ),
                        suffixIcon: SplashButton(
                          iconSize: 16,
                          onTap: () {},
                          child: SvgPicture.asset('assets/icons/sent.svg'),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: KStyle.cWhite,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
