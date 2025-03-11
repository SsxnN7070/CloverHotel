import 'package:clover_hotel_clone/app/modules/booking/views/booking_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';
import '../controllers/booking_controller.dart';

class BookingView extends GetView<BookingController> {
  const BookingView({super.key});

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
              width: size.width,
              color: KStyle.cWhite,
              child: Center(
                child: Text(
                  'Booking History',
                  style: KStyle.t18PTextStyle.copyWith(
                    color: KStyle.cBlack,
                    fontWeight: FontWeight.w700,
                  ),
                ),
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
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(const BookingDetailView());
                    },
                    child: Container(
                      height: 95,
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: KStyle.cWhite,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Booking ID: 1h439#sc${index + 2}', // Dynamic Booking ID
                                style: KStyle.t14PTextStyle.copyWith(
                                  color: KStyle.cBlack,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  Get.to(const BookingDetailView());
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3.5),
                                  decoration: BoxDecoration(
                                    color: KStyle.cPrimary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    'View Detail',
                                    style: KStyle.t14PTextStyle.copyWith(
                                      color: KStyle.cWhite,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Pending',
                                style: KStyle.t14PTextStyle.copyWith(
                                  color: KStyle.cAccent,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Date ${index + 1} Jan - ${(index + 1) + 3} Jan', // Dynamic Date Range
                                style: KStyle.t14PTextStyle.copyWith(
                                  color: KStyle.cBlack,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
