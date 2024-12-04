import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingView extends GetView {
  const LandingView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset('assets/images/clover_text_logo.png'),
        ),
      ),
    );
  }
}
