import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:prolab/app/component/appbackground.dart';
import 'package:prolab/app/component/appinput.dart';
import 'package:prolab/app/routes/app_pages.dart';

import '../controllers/parametrage_controller.dart';

class ParametrageView extends GetView<ParametrageController> {
  const ParametrageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.offAllNamed(Routes.AUTHENTIFCATION);
        },
        backgroundColor: HexColor("#E4F0FA"),
        icon: const CircleAvatar(
          backgroundColor: Colors.red,
          child: Icon(
            Icons.power_settings_new,
            color: Colors.white,
          ),
        ),
        label: const Text(
          "Deconnexion",
          style: TextStyle(color: Colors.red),
        ),
      ),
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
          "Parametrage",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: AppBackground(
        child: Container(
          margin: const EdgeInsets.all(20),
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: ListView(padding: const EdgeInsets.all(10), children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Votre ID est ",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AppInpput(
                    hint: "Votre ID est ",
                    initialValue: "434ff6929954df2317c9f982652a151f",
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Nom de laboratoire  ",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AppInpput(
                    hint: "Nom de laboratoire ",
                    initialValue: "D. Hishem Tounsi",
                  ),
                ),
              ],
            ),
            SwitchListTile(
              value: true,
              onChanged: (value) {},
              title: const Text(
                'Notification',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
