import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';
import '../../../../widgets/button_splash.dart';

class CloverRewardView extends GetView {
  const CloverRewardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KStyle.cPrimary,
        title: Text(
          'Clover Reward',
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 260, // Constrain the height of the horizontal ListVieww
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return TeirCard(
                    tierImage: 'assets/images/tier/silver.png',
                    tierName: 'Silver',
                    tierNumber: '1',
                    currentTier: true,
                    benefit1: "- Very siper man no way home",
                    benefit2: "- This is the very good movie",
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Only need 100 points to reach Gold tier',
              style: KStyle.t14PTextStyle.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 18),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: KStyle.cWhite,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: 4,
                    color: KStyle.c95Grey,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Row(),
                  Text(
                    'Total earned points',
                    style: KStyle.t16PTextStyle.copyWith(
                      fontWeight: FontWeight.w700,
                      color: KStyle.cBlack,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '1,000 Points',
                    style: KStyle.t24PTextStyle.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: KStyle.cWhite,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: 4,
                    color: KStyle.c95Grey,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Row(),
                  Text(
                    'Remained Points',
                    style: KStyle.t16PTextStyle.copyWith(
                      fontWeight: FontWeight.w700,
                      color: KStyle.cBlack,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '500 Points',
                    style: KStyle.t24PTextStyle.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 44,
                width: 220,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'View Point History',
                    style: KStyle.t16PTextStyle.copyWith(
                      color: KStyle.cWhite,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TeirCard extends StatelessWidget {
  final bool currentTier; // true if current tier
  final String tierImage;
  final String tierNumber;
  final String tierName;
  final String benefit1;
  final String benefit2;

  const TeirCard({
    super.key,
    required this.tierNumber,
    required this.tierName,
    required this.benefit1,
    required this.benefit2,
    required this.tierImage,
    required this.currentTier,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      margin: EdgeInsets.only(top: 8, bottom: 8, right: 12, left: 4),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        color: KStyle.cWhite,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 4,
            color: KStyle.c95Grey,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(tierImage),
              const SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  currentTier
                      ? Text(
                          'Your current Tier',
                          style: KStyle.t14PTextStyle.copyWith(
                            fontWeight: FontWeight.w700,
                            color: KStyle.cBlack,
                          ),
                        )
                      : SizedBox(),
                  const SizedBox(height: 10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: KStyle.c8DGrey,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Tier $tierNumber',
                          overflow: TextOverflow.ellipsis,
                          style: KStyle.t18PTextStyle.copyWith(
                            color: KStyle.cWhite,
                          ),
                        ),
                        Text(
                          tierName,
                          overflow: TextOverflow.ellipsis,
                          style: KStyle.t20PTextStyle.copyWith(
                            color: KStyle.cWhite,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          const Divider(),
          const SizedBox(height: 5),
          Text(
            'Benefits',
            style: KStyle.t16PTextStyle.copyWith(
              fontWeight: FontWeight.w700,
              color: KStyle.cBlack,
            ),
          ),
          Text(
            benefit1,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: KStyle.t14PTextStyle.copyWith(
              color: KStyle.cBlack,
            ),
          ),
          Text(
            benefit2,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: KStyle.t14PTextStyle.copyWith(
              color: KStyle.cBlack,
            ),
          ),
        ],
      ),
    );
  }
}
