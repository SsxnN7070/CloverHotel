import 'package:clover_hotel_clone/app/modules/chat/views/chatting_view.dart';
import 'package:clover_hotel_clone/constants/color_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AskinfoView extends GetView {
  const AskinfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF66BB6A), // Green color
        elevation: 0,
        title: const Text(
          'Royal Lake',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text("What would you like to know ?",
                style: KStyle.t16PTextStyle.copyWith(
                  color: KStyle.cBlack,
                )),
            const SizedBox(height: 20),
            AskInfoButton(
              text: "How to take reservation?",
              onTap: () {
                Get.to(() => const ChattingView());
              },
            ),
            const SizedBox(height: 15),
            AskInfoButton(
              text: "How to contact us?",
              onTap: () {
                Get.to(() => const ChattingView());
              },
            ),
            const SizedBox(height: 15),
            AskInfoButton(
              text: "What services do you serve?",
              onTap: () {
                Get.to(() => const ChattingView());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AskInfoButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const AskInfoButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(text,
              style: KStyle.t16PTextStyle.copyWith(
                color: KStyle.cBlack,
              )),
        ),
      ),
    );
  }
}
