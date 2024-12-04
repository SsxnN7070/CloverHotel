import 'package:get/get.dart';

class HotelController extends GetxController {
  RxString selectedRoom = 'Deluxe'.obs;
  var hotels = [].obs;

  void radioOnChange(String? value) {
    selectedRoom.value = value!;
  }
}
