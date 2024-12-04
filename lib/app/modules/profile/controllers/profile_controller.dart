import 'package:get/get.dart';

class ProfileController extends GetxController {
  var slideTab = 0.obs;
  var isPassowrdHidden = true.obs;

  void onChangeSlide(int? value) {
    slideTab.value = value!;
  }
}
