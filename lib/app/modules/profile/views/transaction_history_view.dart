import 'package:clover_hotel_clone/app/modules/profile/views/transaction_details_view.dart';
import 'package:clover_hotel_clone/constants/color_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionHistoryView extends GetView {
  const TransactionHistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Transaction History'),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
        ),
        body: ListView.separated(
          itemCount: 3,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          separatorBuilder: (context, index) =>
              const Divider(height: 1, thickness: 1, color: Colors.grey),
          itemBuilder: (context, index) {
            return OrderHistoryTile();
          },
        ));
  }
}

class OrderHistoryTile extends StatelessWidget {
  const OrderHistoryTile({
    super.key,
  });

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Confirmed':
        return KStyle.cPrimary;
      case 'Refund':
        return Colors.blue;
      case 'Canceled':
        return Colors.red;
      case 'Pending':
        return KStyle.cPrimary;
      default:
        return Get.isDarkMode ? Colors.white : Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 10),
      title: Text(
        'ID: 2873979',
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          Text(" + 329000Ks",
              style: const TextStyle(fontSize: 14, color: Colors.red)),
          const SizedBox(height: 5),
          Text('Date: 7/11/2002',
              style: const TextStyle(fontSize: 14, color: Colors.grey)),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Pending',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: _getStatusColor('Pending')),
          ),
          const SizedBox(height: 20),
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ],
      ),
      onTap: () {
        // Handle tap event to navigate to order detail page
        Get.to(() => TransactionDetailsView());
      },
    );
  }
}
