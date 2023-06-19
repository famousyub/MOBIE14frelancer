import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prolab/app/component/appbackground.dart';
import 'package:prolab/app/component/appstyledcontainer.dart';

import '../controllers/dossier_controller.dart';

class DossierPickerView extends GetView<DossierController> {
  const DossierPickerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: const Text(
            "Détails Des Dossiers",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: AppBackground(
            child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: const [
                    Icon(
                      Icons.person,
                      size: 120,
                    ),
                    Text('40 ans')
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Jason Allen",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.call)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.person,
                                    size: 60,
                                  ),
                                  Row(
                                    children: const [
                                      Text('Jason Allen'),
                                      Icon(Icons.call)
                                    ],
                                  ),
                                ],
                              ),
                              const Text('40 ans')
                            ],
                          ),
                          ListTile(
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('1109042-001'),
                                    IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(),
                                        onPressed: () {
                                          Get.bottomSheet(
                                              TextButton(
                                                  onPressed:
                                                      controller.pickFile,
                                                  child: const Text(
                                                      'Upload file')),
                                              backgroundColor: Colors.white);
                                        },
                                        icon: Image.asset(
                                            "assets/piecejointe.png")),
                                  ],
                                ),
                                const Text('2023-07-11   12:58'),
                                const Text('NFS/CRE/CRP/ECBU GLY/URE'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.attach_money,
                              color: Colors.green,
                            )),
                        SizedBox(width: 10.w),
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.done_outline,
                              color: Colors.green,
                            )),
                        SizedBox(width: 10.w),
                      ],
                    ),
                    SizedBox(height: 50.h),
                    IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                        )),
                  ],
                )
              ],
            ),
            Container(
              height: 40.h,
              width: Get.width,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: const Center(
                  child: Text("GLY   Glycémie a jeun  1.00   g/L(0.7-1.1)")),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: AppStyledContainer(
                  widget: Stack(children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FloatingActionButton(
                            heroTag: "1",
                            backgroundColor: Colors.green,
                            onPressed: () {},
                            child: const Icon(Icons.done_all),
                          ),
                          FloatingActionButton(
                            heroTag: "2",
                            backgroundColor: Colors.blue,
                            onPressed: () {},
                            child: const Icon(Icons.message),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ],
        )));
  }
}