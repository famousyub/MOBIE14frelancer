import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:prolab/app/component/appbackground.dart';
import 'package:prolab/app/component/daterangepicker.dart';

import '../controllers/tb_controller.dart';

class TbView extends GetView<TbController> {
  const TbView({Key? key}) : super(key: key);
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
          "Tableau De Bord",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: AppBackground(
          child: ListView(
        children: [
          const DateRangepicker(),
          Container(
            width: Get.width,
            height: Get.height / 3,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            width: Get.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "Dossiers : ",
                    style: TextStyle(
                        color: HexColor('#229BD2'),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                  ),
                  const Text("0 Dossier")
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Mnt Patient",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.sp),
                        ),
                        Text(
                          "00.00",
                          style: TextStyle(fontSize: 16.sp),
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Mnt Société",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.sp),
                        ),
                        Text(
                          "00.00",
                          style: TextStyle(fontSize: 16.sp),
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.sp),
                        ),
                        Text(
                          "00.00",
                          style: TextStyle(fontSize: 16.sp),
                        )
                      ],
                    ),
                  ))
                ],
              )
            ]),
          ),
          Container(
            width: Get.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "Factures : ",
                    style: TextStyle(
                        color: HexColor('#229BD2'),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                  ),
                  const Text("0 Facture")
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Total TTC : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                  ),
                  Text(
                    "00.00",
                    style: TextStyle(fontSize: 16.sp),
                  )
                ],
              ),
            ]),
          ),
          Container(
            width: Get.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "Factures : ",
                    style: TextStyle(
                        color: HexColor('#229BD2'),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                  ),
                  const Text("0 Facture")
                ],
              ),
              SizedBox(height: 10.h),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.sp),
                      ),
                      Text(
                        "00.00",
                        style: TextStyle(fontSize: 16.sp),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dossier/Factures antérieurs : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.sp),
                      ),
                      Text(
                        "00.00",
                        style: TextStyle(fontSize: 16.sp),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dossier/Factures de la période : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.sp),
                      ),
                      Text(
                        "00.00",
                        style: TextStyle(fontSize: 16.sp),
                      )
                    ],
                  ),
                ],
              ),
            ]),
          ),
          Container(
            width: Get.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Crédits de période : ",
                    style: TextStyle(
                        color: HexColor('#229BD2'),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                  ),
                  const Text("00.00")
                ],
              ),
            ]),
          )
        ],
      )),
    );
  }
}
