import 'package:clover_hotel_clone/app/modules/profile/controllers/point_history_controller.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<PointHistoryController>(
      () => PointHistoryController(),
      fenix: true,
    );
  }
}
