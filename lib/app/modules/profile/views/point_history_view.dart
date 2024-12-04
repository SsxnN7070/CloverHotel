import 'package:clover_hotel_clone/app/modules/profile/controllers/point_history_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';
import '../../../../widgets/button_splash.dart';

class PointHistoryView extends GetView<PointHistoryController> {
  const PointHistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            backgroundColor: KStyle.cPrimary,
            title: Text(
              'Point History',
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
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Container(
                color: KStyle.cAccent,
                child: TabBar(
                  controller: controller.tabController.value,
                  labelStyle: KStyle.t16PTextStyle.copyWith(
                    color: KStyle.cWhite,
                  ),
                  unselectedLabelStyle: KStyle.t16PTextStyle.copyWith(
                    color: KStyle.cWhite,
                  ),
                  indicatorColor: KStyle.cWhite,
                  indicator: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20), // Rounded corners for the bottom indicator
                    ),
                    color: KStyle.cWhite, // Indicator color
                  ),
                  indicatorPadding:
                      const EdgeInsets.only(top: 41, left: 20, right: 20),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(
                      text: 'All',
                    ),
                    Tab(
                      text: 'Earned',
                    ),
                    Tab(
                      text: 'Used',
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: DefaultTabController(
            length: 3,
            child: Obx(() => TabBarView(
                  controller: controller.tabController.value,
                  children: [
                    ListView.builder(
                      itemCount: 5,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 20),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 95,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          margin: const EdgeInsets.only(bottom: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: KStyle.cWhite,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 0),
                                blurRadius: 4,
                                color: KStyle.cGrey,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Point: ',
                                        style: KStyle.t14PTextStyle.copyWith(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        '- 500 Points',
                                        style: KStyle.t14PTextStyle.copyWith(
                                          color: KStyle.cRed,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'Discount 5,000 MMK',
                                    style: KStyle.t14PTextStyle.copyWith(
                                      color: KStyle.cBlack,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Date -1 Jan 24 ',
                                    style: KStyle.t14PTextStyle.copyWith(
                                      color: KStyle.cBlack,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'Royal Lake Hotel',
                                    style: KStyle.t14PTextStyle.copyWith(
                                      color: KStyle.cBlack,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 5,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 20),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 95,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          margin: const EdgeInsets.only(bottom: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: KStyle.cWhite,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 0),
                                blurRadius: 4,
                                color: KStyle.cGrey,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Point: ',
                                        style: KStyle.t14PTextStyle.copyWith(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        '- 500 Points',
                                        style: KStyle.t14PTextStyle.copyWith(
                                          color: KStyle.cRed,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'Discount 5,000 MMK',
                                    style: KStyle.t14PTextStyle.copyWith(
                                      color: KStyle.cBlack,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Date -1 Jan 24 ',
                                    style: KStyle.t14PTextStyle.copyWith(
                                      color: KStyle.cBlack,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'Royal Lake Hotel',
                                    style: KStyle.t14PTextStyle.copyWith(
                                      color: KStyle.cBlack,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 5,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 20),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 95,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          margin: const EdgeInsets.only(bottom: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: KStyle.cWhite,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 0),
                                blurRadius: 4,
                                color: KStyle.cGrey,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Point: ',
                                        style: KStyle.t14PTextStyle.copyWith(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        '- 500 Points',
                                        style: KStyle.t14PTextStyle.copyWith(
                                          color: KStyle.cRed,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'Discount 5,000 MMK',
                                    style: KStyle.t14PTextStyle.copyWith(
                                      color: KStyle.cBlack,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Date -1 Jan 24 ',
                                    style: KStyle.t14PTextStyle.copyWith(
                                      color: KStyle.cBlack,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'Royal Lake Hotel',
                                    style: KStyle.t14PTextStyle.copyWith(
                                      color: KStyle.cBlack,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                )),
          ),
        ));
  }
}
