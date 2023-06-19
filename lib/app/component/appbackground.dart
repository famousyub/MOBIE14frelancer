import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
