import 'package:clover_hotel_clone/app/modules/profile/controllers/top_up_controller.dart';
import 'package:clover_hotel_clone/constants/color_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopUpView extends GetView {
  const TopUpView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(TopUpController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm Payment'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Choose Payment', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            // Wrap the payment options in an Obx to observe changes

            Column(
              children: controller.payments.map((payment) {
                return PaymentOption(
                  name: 'name',
                  phone:
                      '09894023499', // Assuming each payment has a 'phone' field
                  image: 'assets/images/aya.png',
                  isSelected: controller.selectedPayment.value == 'AyaPay',
                  onSelect: () => controller.selectPayment('AyaPay'),
                );
              }).toList(),
            ),

            const SizedBox(height: 16),
            const Text('Upload Screenshot of Payment transaction',
                style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () => controller.chooseImage(),
              child: Obx(
                () => Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: controller.transitionImage.value == ""
                      ? Center(
                          child: controller.isLoading.value
                              ? const CircularProgressIndicator()
                              : const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.upload_file,
                                        size: 40, color: Colors.grey),
                                    SizedBox(height: 8),
                                    Text('Click here to upload image')
                                  ],
                                ),
                        )
                      : Image.network(
                          controller.transitionImage.value,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ),
            const SizedBox(height: 16), // Added space before the confirm button
            Obx(() {
              return ElevatedButton(
                onPressed: () => controller.confirmPayment(),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: KStyle.cPrimary,
                ),
                child: controller.isOrder.value
                    ? const CircularProgressIndicator()
                    : const Text('Submit',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
              );
            }),
            const SizedBox(height: 8),
            const Text(
              'Note: Please upload the screenshot of your payment transaction to complete your payment',
              style: TextStyle(color: Color.fromARGB(255, 130, 130, 130)),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentOption extends StatelessWidget {
  final String name;
  final String phone;
  final String image;
  final bool isSelected;
  final VoidCallback onSelect;

  const PaymentOption({
    super.key,
    required this.name,
    required this.phone,
    required this.image,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          tileColor: KStyle.cF6Grey,
          leading: Image.asset(image), // Use network image from Firestore
          title: Text(name),
          subtitle: Text(phone),
          trailing: isSelected
              ? Icon(Icons.check_circle, color: KStyle.cPrimary)
              : const Icon(Icons.radio_button_unchecked),
        ),
      ),
    );
  }
}
