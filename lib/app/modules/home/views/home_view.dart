import 'package:clover_hotel_clone/app/modules/base/controllers/base_controller.dart';
import 'package:clover_hotel_clone/app/modules/home/views/notification_view.dart';
import 'package:clover_hotel_clone/app/modules/home/views/point_benefit_view.dart';
import 'package:clover_hotel_clone/app/modules/home/views/qrCode_view.dart';
import 'package:clover_hotel_clone/app/modules/hotel/views/search_hotel_view.dart';
import 'package:clover_hotel_clone/app/modules/profile/views/clover_reward_view.dart';
import 'package:clover_hotel_clone/app/modules/profile/views/point_history_view.dart';
import 'package:clover_hotel_clone/widgets/button_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../../../../constants/color_style.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBar(
            backgroundColor: KStyle.cWhite,
            toolbarHeight: 71,
            titleSpacing: 0,
            title: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
              height: 71,
              color: KStyle.cWhite,
              child: Row(
                children: [
                  const SizedBox(width: 6),
                  Image.asset(
                    'assets/images/clover_text_logo.png',
                    width: 170,
                  ),
                  const Spacer(),
                  SplashButton(
                    onTap: () {
                      Get.to(() => const NotificationView());
                    },
                    child: SvgPicture.asset('assets/icons/bell.svg'),
                  ),
                  const SizedBox(width: 3),
                  SplashButton(
                    onTap: () {
                      Get.to(() => const SearchHotelView());
                    },
                    child: SvgPicture.asset('assets/icons/menu.svg'),
                  )
                ],
              ),
            ),
            centerTitle: true,
          ),
          const SizedBox(height: 12),
          Text(
            'You Stay...... We Reward',
            style: KStyle.t32HTextStyle,
          ),
          const SizedBox(height: 7),
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
                children: [
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(const QrcodeView());
                          },
                          child: Column(
                            children: [
                              Image.asset('assets/images/qr_code.png'),
                              const SizedBox(height: 3),
                              Text(
                                'QR Code',
                                style: KStyle.t16PTextStyle.copyWith(
                                  color: KStyle.cWhite,
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(const CloverRewardView());
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'Total Points',
                                    style: KStyle.t18PTextStyle.copyWith(
                                      color: KStyle.cWhite,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  SvgPicture.asset('assets/icons/question.svg'),
                                ],
                              ),
                            ),
                            Text(
                              '1,000',
                              style: KStyle.t40IBMTextStyle,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(const CloverRewardView());
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/medal.svg'),
                              Text(
                                'Gold',
                                style: KStyle.t16PTextStyle.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: KStyle.cWhite,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          HomeButtonContainer(
                            onTap: () {
                              Get.find<BaseController>().currentIndex.value = 1;
                            },
                            iconPath: 'assets/icons/nav/hotel_nav_off.svg',
                            size: 32,
                            name: 'Hotels',
                          ),
                          const SizedBox(width: 12),
                          HomeButtonContainer(
                            onTap: () {
                              Get.find<BaseController>().currentIndex.value = 2;
                            },
                            iconPath: 'assets/icons/nav/booking_nav_off.svg',
                            name: 'Booking History',
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          HomeButtonContainer(
                            onTap: () {
                              Get.to(const CloverRewardView());
                            },
                            iconPath: 'assets/icons/reward.svg',
                            size: 32,
                            name: 'Clover Rewards',
                          ),
                          const SizedBox(width: 12),
                          HomeButtonContainer(
                            onTap: () {
                              Get.to(const PointHistoryView());
                            },
                            iconPath: 'assets/icons/history.svg',
                            name: 'Point History',
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          children: [
                            Text(
                              'Our Promotions',
                              style: KStyle.t16PTextStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                color: KStyle.cWhite,
                              ),
                            ),
                            const SizedBox(width: 18),
                            SvgPicture.asset('assets/icons/megaphone.svg'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Obx(
                        () => controller.isLoading.value == true
                            ? Center(
                                child: SizedBox(
                                height: 153,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  itemCount: 5,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      width: size.width - 60,
                                      margin: const EdgeInsets.only(right: 20),
                                      height: 153,
                                      decoration: BoxDecoration(
                                        color: KStyle.cWhite,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [],
                                      ),
                                    );
                                  },
                                ),
                              ))
                            : GFCarousel(
                                height: 160,
                                passiveIndicator: GFColors.ALT,
                                activeIndicator: GFColors.DANGER,
                                autoPlay: true,
                                items: controller.imageList.map(
                                  (url) {
                                    return Container(
                                      margin: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5.0)),
                                        child: Image.network(url,
                                            fit: BoxFit.cover, width: 1000.0),
                                      ),
                                    );
                                  },
                                ).toList(),
                                onPageChanged: (index) {
                                  index;
                                  controller.update();
                                  // Function to change the current page

                                  controller.currentImage.value = index;
                                },
                              ),
                      ),
                      // Dots Indicator
                      Obx(() => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              controller.imageList
                                  .length, // Generate dots based on the number of banners
                              (index) => buildDot(
                                  index, controller.currentImage.value),
                            ),
                          )),

                      const SizedBox(height: 10),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          children: [
                            Text(
                              'Benefit of points',
                              style: KStyle.t16PTextStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                color: KStyle.cWhite,
                              ),
                            ),
                            const SizedBox(width: 18),
                            SvgPicture.asset('assets/icons/bard.svg'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 10),
                        itemBuilder: (BuildContext context, int index) {
                          return const BenefitItem();
                        },
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Get.to(const PointBenefitView());
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'View More',
                                  style: KStyle.t14PTextStyle.copyWith(
                                    color: KStyle.cWhite,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  color: KStyle.cWhite,
                                ),
                              ],
                            )),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // Dot builder for the page indicator
  Widget buildDot(int index, int currentPage) {
    return Container(
      height: 10.0,
      width: currentPage == index ? 18 : 7,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
    );
  }
}

class HomeButtonContainer extends StatelessWidget {
  const HomeButtonContainer({
    super.key,
    required this.iconPath,
    this.size = 24,
    required this.onTap,
    required this.name,
  });

  final String iconPath;
  final double size;
  final Function() onTap;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 98,
        width: 139,
        decoration: BoxDecoration(
          color: KStyle.cWhite,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              width: size,
            ),
            Text(
              name,
              style: KStyle.t16PTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
