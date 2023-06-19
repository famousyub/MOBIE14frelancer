import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class MenuBottomsheetWidget extends StatelessWidget {
  const MenuBottomsheetWidget({
    super.key,
    required this.img,
    required this.label,
    required this.onTap,
  });
  final String img, label;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Get.width,
        height: 60.h,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                HexColor("#38A3CC").withOpacity(0.7),
                HexColor("#9DC65B").withOpacity(0.7)
              ],
            )),
        child: Row(children: [
          Image.asset(img),
          SizedBox(width: 20.w),
          Expanded(
              child: Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 22.sp),
          ))
        ]),
      ),
    );
  }
}
