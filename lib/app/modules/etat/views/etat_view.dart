import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:prolab/app/component/appbackground.dart';

import '../controllers/etat_controller.dart';

class EtatView extends GetView<EtatController> {
  const EtatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
        title: const Text(
          "Etat Technique",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: AppBackground(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: PageView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 220.h,
                  width: 220.w,
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 30,
                        color: Colors.white,
                        offset: Offset(-28, -28)),
                    BoxShadow(
                        blurRadius: 30,
                        color: Color(0xFFA7A9AF),
                        offset: Offset(28, 28))
                  ], shape: BoxShape.circle, color: Color(0xFFE7ECEF)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "64°",
                          style: TextStyle(
                              color: HexColor("#393F65"), fontSize: 50.sp),
                        ),
                        Text(
                          "Cool",
                          style: TextStyle(
                              fontSize: 16.sp, color: HexColor("#3C8BEE")),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "68°",
                          style:
                              TextStyle(fontSize: 16.sp, color: Colors.black54),
                        )
                      ]),
                ),
                SizedBox(height: 40.h),
                Container(
                  height: 200.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 30,
                            color: Colors.white,
                            offset: Offset(-28, -28)),
                        BoxShadow(
                            blurRadius: 30,
                            color: Color(0xFFA7A9AF),
                            offset: Offset(28, 28))
                      ],
                      color: const Color(0xFFE7ECEF)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/humidite.png",
                        ),
                        Text(
                          "Humidity",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Colors.grey),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "49%",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              color: Colors.grey),
                        )
                      ]),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 30,
                            color: Colors.white,
                            offset: Offset(-28, -28)),
                        BoxShadow(
                            blurRadius: 30,
                            color: Color(0xFFA7A9AF),
                            offset: Offset(28, 28))
                      ],
                      color: const Color(0xFFE7ECEF)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/fume colore.png",
                        ),
                        Text(
                          "Activer",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Colors.grey),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "49%",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              color: Colors.grey),
                        )
                      ]),
                ),
                SizedBox(height: 40.h),
                Container(
                  height: 200.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 30,
                            color: Colors.white,
                            offset: Offset(-28, -28)),
                        BoxShadow(
                            blurRadius: 30,
                            color: Color(0xFFA7A9AF),
                            offset: Offset(28, 28))
                      ],
                      color: const Color(0xFFE7ECEF)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/coupure.png",
                        ),
                        Text(
                          "Desactiver",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Colors.grey),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "49%",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              color: Colors.grey),
                        )
                      ]),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
