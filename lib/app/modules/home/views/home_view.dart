import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:prolab/app/component/appbackground.dart';
import 'package:prolab/app/component/appstyledcontainer.dart';
import 'package:prolab/app/routes/app_pages.dart';

import '../../../component/daterangepicker.dart';
import '../controllers/home_controller.dart';
import '../widgets/menubottomsheetwidget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Get.bottomSheet(
              Container(
                height: Get.height / 1.2,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    HexColor("#49ADD9").withOpacity(0.7),
                    HexColor("#AACE72").withOpacity(0.7)
                  ],
                )),
                child: Container(
                  margin: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuBottomsheetWidget(
                        img: "assets/tb.png",
                        label: "Tableau de bord",
                        onTap: () {
                          Get.toNamed(Routes.TB);
                        },
                      ),
                      MenuBottomsheetWidget(
                        img: "assets/dossiesanalyse.png",
                        label: "Dossier Analyse ",
                        onTap: () {
                          Get.toNamed(Routes.DOSSIER);
                        },
                      ),
                      MenuBottomsheetWidget(
                        img: "assets/reflement.png",
                        label: "Règlement",
                        onTap: () {
                          Get.toNamed(Routes.REGLEMENT);
                        },
                      ),
                      MenuBottomsheetWidget(
                        img: "assets/etat.png",
                        label: "état technique",
                        onTap: () {
                          Get.toNamed(Routes.ETAT);
                        },
                      ),
                      MenuBottomsheetWidget(
                        img: "assets/parameterage.png",
                        label: "Paramétres",
                        onTap: () {
                          Get.toNamed(Routes.PARAMETRAGE);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              isScrollControlled: true,
              backgroundColor: Colors.white);
        },
        child: const Icon(
          Icons.swipe_up,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        title: const ListTile(
          title: Text("Liste Des Dossiers"),
          subtitle: Text("Validation En Ligne"),
        ),
        centerTitle: true,
      ),
      body: AppBackground(
          child: Row(
        children: [
          const Spacer(),
          Expanded(
              flex: 10,
              child: Column(
                children: [
                  const DateRangepicker(),
                  Expanded(
                    child: AppStyledContainer(
                      widget: Stack(
                        children: [
                          ListView.builder(
                            itemCount: 4,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.DOSSIER);
                              },
                              child: Container(
                                  padding: const EdgeInsets.all(5.0),
                                  margin: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.blue.shade50,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            index == 0
                                                ? "assets/man.png"
                                                : index == 1
                                                    ? "assets/female.png"
                                                    : index == 2
                                                        ? "assets/boy.png"
                                                        : "assets/girl.png",
                                            width: 48.w,
                                            height: 48.h,
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            "40 ans",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16.sp),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: const Text('Jason Allen'),
                                          subtitle: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  const Text('1109042-001'),
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          constraints:
                                                              const BoxConstraints(),
                                                          onPressed: () {},
                                                          icon: const Icon(
                                                            Icons.attach_money,
                                                            color: Colors.green,
                                                          )),
                                                      IconButton(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          constraints:
                                                              const BoxConstraints(),
                                                          onPressed: () {},
                                                          icon: const Icon(
                                                            Icons.done_outline,
                                                            color: Colors.green,
                                                          )),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                      '2023-07-11   12:58'),
                                                  IconButton(
                                                      padding: EdgeInsets.zero,
                                                      constraints:
                                                          const BoxConstraints(),
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.print_rounded,
                                                      ))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const Expanded(
                                                    child: Text(
                                                        'NFS/CRE/CRP/ECBU GLY/URE'),
                                                  ),
                                                  IconButton(
                                                      padding: EdgeInsets.zero,
                                                      constraints:
                                                          const BoxConstraints(),
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.telegram,
                                                        color: Colors.black,
                                                      ))
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: FloatingActionButton(
                              heroTag: "3",
                              backgroundColor: Colors.blue,
                              onPressed: () {},
                              child: const Icon(Icons.search),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  )
                ],
              )),
          const Spacer(),
        ],
      )),
    );
  }
}
