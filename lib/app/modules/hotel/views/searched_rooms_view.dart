import 'package:clover_hotel_clone/app/modules/hotel/views/room_detail_view.dart';
import 'package:clover_hotel_clone/constants/color_style.dart';
import 'package:clover_hotel_clone/widgets/button_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SearchedRoomsView extends GetView {
  const SearchedRoomsView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: KStyle.cF6Grey,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Available Rooms',
                    style: KStyle.t14PTextStyle.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
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
                              height: 120,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/hotel1.png', // Make sure to add the correct file extension
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                'Deluxe Room\nRoom size: 344 ft\nShwedagon Pagoda view\n2 single beds ',
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
        ),
      ),
    );
  }
}
