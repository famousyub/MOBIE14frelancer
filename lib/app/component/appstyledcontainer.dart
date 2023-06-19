import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppStyledContainer extends StatelessWidget {
  const AppStyledContainer({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.lightBlue,
            Colors.green,
          ],
        )),
        child: Container(
            margin: const EdgeInsets.all(2),
            padding: const EdgeInsets.all(10),
            width: Get.width,
            height: Get.height,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: widget));
  }
}
