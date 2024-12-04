import 'package:clover_hotel_clone/app/modules/booking/views/booking_view.dart';
import 'package:clover_hotel_clone/app/modules/chat/views/chat_view.dart';
import 'package:clover_hotel_clone/app/modules/home/views/home_view.dart';
import 'package:clover_hotel_clone/app/modules/hotel/views/hotel_view.dart';
import 'package:clover_hotel_clone/app/modules/profile/views/profile_view.dart';
import 'package:clover_hotel_clone/constants/color_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../controllers/base_controller.dart';

class BaseView extends GetView<BaseController> {
  const BaseView({super.key});

  final String navPath = 'assets/icons/nav';

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: KStyle.cWhite,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: KStyle.t14PTextStyle,
            unselectedLabelStyle: KStyle.t14PTextStyle,
            selectedItemColor: KStyle.cAccent,
            unselectedItemColor: KStyle.cPrimary,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                activeIcon: SvgPicture.asset('$navPath/home_nav_on.svg'),
                icon: SvgPicture.asset('$navPath/home_nav_off.svg'),
              ),
              BottomNavigationBarItem(
                label: 'Hotel',
                activeIcon: SvgPicture.asset('$navPath/hotel_nav_on.svg'),
                icon: SvgPicture.asset('$navPath/hotel_nav_off.svg'),
              ),
              BottomNavigationBarItem(
                label: 'Booking',
                activeIcon: SvgPicture.asset('$navPath/booking_nav_on.svg'),
                icon: SvgPicture.asset('$navPath/booking_nav_off.svg'),
              ),
              BottomNavigationBarItem(
                label: 'Chat',
                activeIcon: SvgPicture.asset('$navPath/chat_nav_on.svg'),
                icon: SvgPicture.asset('$navPath/chat_nav_off.svg'),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                activeIcon: SvgPicture.asset('$navPath/profile_nav_on.svg'),
                icon: SvgPicture.asset('$navPath/profile_nav_off.svg'),
              ),
            ],
            onTap: (index) {
              // Dispose of the old controller
              controller.disposeController(controller.currentIndex.value);

              // Initialize the new controller
              controller.initializeController(index);

              // Update the current index
              controller.currentIndex.value = index;
            },
          ),
          body: IndexedStack(
            index: controller.currentIndex.value,
            children: const [
              HomeView(),
              HotelView(),
              BookingView(),
              ChatView(),
              ProfileView(),
            ],
          ),
        ));
  }
}
