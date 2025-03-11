import 'package:clover_hotel_clone/app/modules/chat/views/askInfo_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';
import '../../../../widgets/button_splash.dart';
import '../../home/views/notification_view.dart';
import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBar(
            backgroundColor: KStyle.cWhite,
            toolbarHeight: 71,
            titleSpacing: 0,
            title: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
              height: 71,
              color: KStyle.cWhite,
              child: Row(
                children: [
                  const SizedBox(width: 6),
                  Image.asset(
                    'assets/images/clover_text_logo.png',
                    width: 170,
                  ),
                  const Spacer(),
                  SplashButton(
                    onTap: () {
                      Get.to(const NotificationView());
                    },
                    child: SvgPicture.asset('assets/icons/bell.svg'),
                  ),
                  const SizedBox(width: 3),
                  SplashButton(
                    onTap: () {},
                    child: SvgPicture.asset('assets/icons/menu.svg'),
                  )
                ],
              ),
            ),
            centerTitle: true,
          ),
          const SizedBox(height: 32),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: KStyle.cPrimary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Chat',
                              style: KStyle.t18PTextStyle.copyWith(
                                color: KStyle.cWhite,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(width: 10),
                            SvgPicture.asset('assets/icons/comment.svg'),
                          ],
                        ),
                        Text(
                          'Which hotel do you want to communicate with?',
                          style: KStyle.t16PTextStyle.copyWith(
                            color: KStyle.cWhite,
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      itemCount: 1, // You can replace with dynamic count
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: size.width,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          margin: const EdgeInsets.only(bottom: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: KStyle.cWhite,
                          ),
                          child: Row(
                            children: [
                              // Image Section
                              Container(
                                height: 135,
                                width: 135,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/hotel_image1.png'), // Correct image path
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Clover Street Royal lake ',
                                      style: KStyle.t14PTextStyle.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/location.svg'),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: Text(
                                            'Khao Sok Lake, Kuraburi',
                                            style: KStyle.t12PTextStyle,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/phone.svg'),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: Text(
                                            '0634162567, 0898511263',
                                            style: KStyle.t12PTextStyle,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 18),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: TextButton(
                                        onPressed: () {
                                          Get.to(() => const AskinfoView());
                                        },
                                        child: Text(
                                          'Select',
                                          style: KStyle.t14PTextStyle.copyWith(
                                            color: KStyle.cWhite,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
