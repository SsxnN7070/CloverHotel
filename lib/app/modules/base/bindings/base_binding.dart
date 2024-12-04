import 'package:clover_hotel_clone/app/modules/hotel/controllers/hotel_controller.dart';
import 'package:clover_hotel_clone/app/modules/profile/controllers/point_history_controller.dart';
import 'package:clover_hotel_clone/app/modules/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../controllers/base_controller.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseController>(
      () => BaseController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<PointHistoryController>(
      () => PointHistoryController(),
      fenix: true,
    );
    Get.lazyPut<HotelController>(
      () => HotelController(),
      fenix: true,
    );
  }
}
