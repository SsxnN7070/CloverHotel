import 'package:clover_hotel_clone/app/modules/hotel/views/room_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';
import '../../../../widgets/button_splash.dart';

class HotelDetailView extends GetView {
  const HotelDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KStyle.cPrimary,
        title: Text(
          'Cheow Lan Lake',
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
      body: ListView(
        children: [
          const SizedBox(height: 24),
          SizedBox(
            height: 177,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 24),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 177,
                  width: 278,
                  color: KStyle.cGrey,
                  child: Image.asset('assets/images/hotel_image1.png', fit: BoxFit.cover),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 15, 24, 24),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/icons/location.svg'),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Khlong Lat Mayom Floating Market, Taling Chan',
                        style: KStyle.t12PTextStyle,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/icons/phone.svg'),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        '063-416-2567, 089-851-1263',
                        style: KStyle.t12PTextStyle,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: KStyle.cF6Grey,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Available Rooms',
                    style: KStyle.t14PTextStyle.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => const RoomDetailView());
                      },
                      child: Stack(children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                              color: KStyle.cWhite,
                              borderRadius: BorderRadius.circular(16)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 135,
                                width: 135,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/hotel2.png', // Make sure to add the correct file extension
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  'Deluxe Room\nRoom size: 344 ft\nLake view\n2 single beds ',
                                  style: KStyle.t14PTextStyle,
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 14,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: KStyle.cF6Grey,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: EdgeInsets.all(4),
                            child: Text(
                              'View Details',
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                        ),
                      ]),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
