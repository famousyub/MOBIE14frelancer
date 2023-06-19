import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prolab/app/component/appbackground.dart';
import 'package:prolab/app/component/daterangepicker.dart';

import '../controllers/reglement_controller.dart';

class ReglementView extends GetView<ReglementController> {
  const ReglementView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            title: const Text(
              "Liste des Réglements",
              style: TextStyle(color: Colors.black),
            )),
        body: AppBackground(
            child: Column(
          children: [
            const DateRangepicker(),
            Expanded(
                child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) => Container(
                width: Get.width,
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Ramzi Tounsi"),
                        Text("N° 100518-016"),
                        Text("25/8/2021 10:34"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Mnt dossier"),
                            Text("45,0000"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Espéces"),
                            Text("45,0000"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Reste"),
                            Text("45,0000"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ))
          ],
        )));
  }
}
