import 'package:clover_hotel_clone/app/modules/home/views/notification_view.dart';
import 'package:clover_hotel_clone/app/modules/hotel/views/hotel_detail_view.dart';
import 'package:clover_hotel_clone/app/modules/hotel/views/search_hotel_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';
import '../../../../widgets/button_splash.dart';
import '../controllers/hotel_controller.dart';

class HotelView extends GetView<HotelController> {
  const HotelView({super.key});
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
              height: 71,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
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
                padding: const EdgeInsets.symmetric(vertical: 24),
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Our Hotels',
                      style: KStyle.t18PTextStyle.copyWith(
                        fontWeight: FontWeight.w700,
                        color: KStyle.cWhite,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ListView.builder(
                    itemCount: 5,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => const HotelDetailView());
                        },
                        child: Container(
                          width: size.width,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          margin: const EdgeInsets.only(bottom: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: KStyle.cWhite,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 135,
                                width: 135,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      'Clover Street Royal lake ',
                                      style: KStyle.t14PTextStyle.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/location.svg'),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: Text(
                                            '10 Ngar Htat Gyi Pagoda St, Yangon',
                                            style: KStyle.t12PTextStyle,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/phone.svg'),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: Text(
                                            '09928391841, 098848285',
                                            style: KStyle.t12PTextStyle,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 18),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        'View Details',
                                        style: KStyle.t14PTextStyle.copyWith(
                                          color: KStyle.cAccent,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
