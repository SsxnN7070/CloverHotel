import 'package:clover_hotel_clone/app/modules/home/views/qrCode_view.dart';
import 'package:clover_hotel_clone/app/modules/profile/views/scan_view.dart';
import 'package:clover_hotel_clone/app/modules/profile/views/top_up_view.dart';
import 'package:clover_hotel_clone/app/modules/profile/views/transaction_history_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DepositView extends GetView {
  const DepositView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Deposit',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Balance Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Balance',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '0 MMK',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    // Decorative Shape
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            // Icons Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIconColumn(Icons.qr_code_scanner, 'Scan', () {
                  Get.to(() => const ScanView());
                }),
                _buildIconColumn(Icons.qr_code, 'QR', () {
                  Get.to(() => const QrcodeView());
                }),
                _buildIconColumn(Icons.account_balance_wallet, 'Top Up', () {
                  Get.to(() => const TopUpView());
                }),
                _buildIconColumn(Icons.history, 'History', () {
                  Get.to(() => const TransactionHistoryView());
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper Widget for Icon + Label
  Widget _buildIconColumn(IconData icon, String label, var fn) {
    return GestureDetector(
      onTap: fn,
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.green.withOpacity(0.1),
            child: Icon(
              icon,
              size: 32,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
