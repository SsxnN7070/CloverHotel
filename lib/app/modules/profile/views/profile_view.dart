import 'package:clover_hotel_clone/app/modules/profile/views/account_setting_view.dart';
import 'package:clover_hotel_clone/app/modules/profile/views/clover_reward_view.dart';
import 'package:clover_hotel_clone/app/modules/profile/views/deposit_view.dart';
import 'package:clover_hotel_clone/app/modules/profile/views/point_history_view.dart';
import 'package:clover_hotel_clone/app/modules/profile/views/privacy_policy_view.dart';
import 'package:clover_hotel_clone/constants/color_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../login/views/login_view.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: KStyle.cWhite,
          ),
          body: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CupertinoSlidingSegmentedControl(
                          groupValue: controller.slideTab.value,
                          thumbColor: KStyle.cWhite,
                          backgroundColor: KStyle.cPrimary,
                          children: {
                            0: Text(
                              'ENG',
                              style: KStyle.t14PTextStyle.copyWith(
                                color: controller.slideTab.value == 0
                                    ? KStyle.cBlack
                                    : KStyle.cWhite,
                              ),
                            ),
                            1: Text(
                              'TH',
                              style: KStyle.t14PTextStyle.copyWith(
                                color: controller.slideTab.value == 1
                                    ? KStyle.cBlack
                                    : KStyle.cWhite,
                              ),
                            ),
                          },
                          onValueChanged: controller.onChangeSlide,
                        ),
                        Text(
                          'Profile',
                          style: KStyle.t18PTextStyle.copyWith(
                            fontWeight: FontWeight.w700,
                            color: KStyle.cBlack,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                              ),
                              onPressed: () {
                                Get.to(() => const LoginView());
                              },
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/icons/logout.svg'),
                                  const SizedBox(width: 6),
                                  Text(
                                    'Logout',
                                    style: KStyle.t12PTextStyle.copyWith(
                                      color: KStyle.cWhite,
                                    ),
                                  )
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                    Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: KStyle.cGrey,
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
                  const SizedBox(height: 12),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: KStyle.cPrimary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 24),
                    children: [
                      ProfileItemCard(
                        iconPath: 'user_profile.svg',
                        title: 'Account Setting',
                        content: 'Change your account setting',
                        onTap: () {
                          Get.to(() => const AccountSettingView());
                        },
                      ),
                      ProfileItemCard(
                        iconPath: 'wallet.svg',
                        title: 'Deposit',
                        content: 'Add your deposit account',
                        onTap: () {
                          Get.to(() => const DepositView());
                        },
                      ),
                      ProfileItemCard(
                        iconPath: 'medal.svg',
                        title: 'Point History',
                        content: 'View point history',
                        onTap: () {
                          Get.to(() => const PointHistoryView());
                        },
                      ),
                      ProfileItemCard(
                        iconPath: 'id_card.svg',
                        title: 'Clover Reward',
                        content: 'Reward points, Tier and member card',
                        onTap: () {
                          Get.to(() => const CloverRewardView());
                        },
                      ),
                      ProfileItemCard(
                        iconPath: 'file_list.svg',
                        title: 'Privacy Policy',
                        content: 'Learn our privacy policy',
                        onTap: () {
                          Get.to(const PrivacyPolicyView());
                        },
                      ),
                      ProfileItemCard(
                        iconPath: 'close_circle.svg',
                        title: 'Delete Account',
                        content: 'You can delete account ',
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  insetPadding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 18),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/error_warning.svg'),
                                        const SizedBox(height: 15),
                                        Text(
                                          'Are you sure to delete your account?\nYou will lose all of the point and rewards.',
                                          style: KStyle.t14PTextStyle.copyWith(
                                            color: KStyle.cBlack,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              width: 100,
                                              child: OutlinedButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Cancel',
                                                  style: KStyle.t14PTextStyle
                                                      .copyWith(
                                                    color: KStyle.cRed,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 12),
                                            SizedBox(
                                              width: 100,
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Delete',
                                                  style: KStyle.t14PTextStyle
                                                      .copyWith(
                                                    color: KStyle.cWhite,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileItemCard extends StatelessWidget {
  const ProfileItemCard({
    super.key,
    required this.onTap,
    required this.iconPath,
    required this.title,
    required this.content,
  });

  final Function() onTap;
  final String iconPath;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        margin: const EdgeInsets.only(bottom: 10),
        height: 83,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: KStyle.cWhite,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/profile/$iconPath'),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: KStyle.t16PTextStyle,
                  ),
                  Text(
                    content,
                    style: KStyle.t12PTextStyle,
                  ),
                ],
              ),
            ),
            SvgPicture.asset('assets/icons/arrow_right.svg'),
          ],
        ),
      ),
    );
  }
}
