import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';
import '../../../../widgets/button_splash.dart';

class PointBenefitView extends GetView {
  const PointBenefitView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KStyle.cPrimary,
        title: Text(
          'Benefit of Points',
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
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              scrollDirection: Axis.vertical,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return BenefitItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BenefitItem extends StatelessWidget {
  const BenefitItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width - 46,
      height: 120,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: KStyle.cWhite,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            blurRadius: 4,
            color: KStyle.cGrey,
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 104,
            width: 120,
            color: Colors.grey,
            child: Image.asset('assets/images/benfit1.png', fit: BoxFit.cover),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Swimming pool package',
                  style: KStyle.t14PTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Points - ',
                      style: KStyle.t16PTextStyle.copyWith(
                        color: KStyle.cBlack,
                      ),
                    ),
                    Text(
                      '10 Points',
                      style: KStyle.t16PTextStyle.copyWith(
                        color: KStyle.cBlack,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
