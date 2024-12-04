import 'package:clover_hotel_clone/app/modules/booking/controllers/booking_controller.dart';
import 'package:clover_hotel_clone/app/modules/chat/controllers/chat_controller.dart';
import 'package:clover_hotel_clone/app/modules/home/controllers/home_controller.dart';
import 'package:clover_hotel_clone/app/modules/hotel/controllers/hotel_controller.dart';
import 'package:clover_hotel_clone/app/modules/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  var currentIndex = 0.obs;

  @override
  void onInit() async {
    super.onInit();
    initializeController(currentIndex.value);
  }

  void initializeController(int index) {
    // Initialize the corresponding controller based on the selected index
    switch (index) {
      case 0:
        Get.put(HomeController());

        break;
      case 1:
        Get.put(HotelController());
        break;
      case 2:
        Get.put(BookingController());
        break;
      case 3:
        Get.put(ChatController());
        break;
      case 4:
        Get.put(ProfileController());
        break;
    }
  }

  void disposeController(int index) {
    // Delete the controller from memory when navigating away
    switch (index) {
      case 1:
        Get.delete<HotelController>();
        break;
    }
  }
}
