import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopUpController extends GetxController {
  var transitionImage = "".obs;
  late File file;
  var isProfileImageChooseSuccess = false.obs;
  var isLoading = false.obs;
  var isOrder = false.obs;

  var payments =
      <Map<String, dynamic>>[{}, {}].obs; // List to store payment data
  var selectedPayment = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPayments(); // Fetch payment data when the controller initializes
    isProfileImageChooseSuccess.value = false;
  }

  // Fetch payment data from Firestore
  void fetchPayments() async {
    try {} catch (e) {
      Get.snackbar('Error', 'Failed to load payment options');
    }
  }

  // Method to select payment method
  void selectPayment(String method) {
    selectedPayment.value = method;
  }

  // Function to choose an image from File Picker
  Future<void> chooseImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      file = File(result.files.single.path!);
      isProfileImageChooseSuccess.value = true;
      await uploadImage(file);
    } else {
      // User canceled the picker
      Get.snackbar("Cancel", "No Image");
    }
  }

// Function to upload the selected image to Firebase Storage and save its metadata in Firestore
  Future<void> uploadImage(File imageFile) async {
    try {} catch (e) {
      print('Error uploading image: $e');
    }
  }

  void confirmPayment() async {
    // Validate if a payment method is selected
    if (selectedPayment.value.isEmpty) {
      Get.snackbar('Payment Error', 'Please select a payment method.',
          backgroundColor: Colors.red, colorText: Colors.white);
      return;
    }

    // Validate if an image has been uploaded
    if (transitionImage.value.isEmpty) {
      Get.snackbar('Image Error', 'Please upload a transaction screenshot.',
          backgroundColor: Colors.red, colorText: Colors.white);
      return;
    }

    isOrder.value = true;

    isOrder.value = false;
  }
}
