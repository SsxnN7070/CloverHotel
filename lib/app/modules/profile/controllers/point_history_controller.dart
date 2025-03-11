import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PointHistoryController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Rx<TabController> tabController;

  @override
  void onInit() {
    tabController = TabController(length: 5, vsync: this).obs;
    super.onInit();
  }

  @override
  void onClose() {
    tabController.value.dispose();
    super.onClose();
  }
}
