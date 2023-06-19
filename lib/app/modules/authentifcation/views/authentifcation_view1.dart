import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:prolab/app/component/appbackground.dart';
import 'package:prolab/app/component/appinput.dart';
import 'package:prolab/app/routes/app_pages.dart';
import 'package:http/http.dart' as http; // Import the http package

import '../controllers/authentifcation_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthentifcationView1 extends GetView<AuthentifcationController> {
  const AuthentifcationView1({Key? key}) : super(key: key);
  
  // Modify the save method to send a POST request to the backend API
  Future<void> save(BuildContext context) async {
    const String  url = 'http://localhost:8083/api/auth/signin'; // Replace with your backend API URL
    final response = await http.post(
      Uri.parse(url),
      body: {
        'laboratoryId': "hb177ert",
        'usernameOrEmail': controller.user.usernameOrEmail.toString(),
        'password': controller.user.password.toString(),
      },
    );

    if (response.statusCode == 200) {
      // API call successful, handle the response here
      // For example, you can navigate to the home screen
      Get.offAllNamed(Routes.HOME);
    } else {
      // API call failed, handle the error here
      // For example, you can show an error message to the user
      print('API call failed with status code: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppBackground(
          child: Center(
            child: SingleChildScrollView(
              child: Row(
                children: [
                  const Spacer(),
                  Expanded(
                    flex: 8,
                    child: Form(
                      key: controller.form,
                      child: Column(
                        children: [
                          Image.asset("assets/logo.png", scale: 1.5),
                          SizedBox(height: 30.h),
                          Column(children: [
                            const AppInpput(
                              hint: "ID laboratoire",
                              prefIcon: Icons.card_membership,
                            ),
                            SizedBox(height: 10.h),
                             TextFormField(
                          controller: TextEditingController(text: controller.user.usernameOrEmail),
                          onChanged: (val) {
                           controller.user.usernameOrEmail = val;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'emial is Empty';
                            }
                            return null;
                          },
                          style: TextStyle(fontSize: 30, color: Colors.white),
                          decoration: InputDecoration(
                              errorStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                            SizedBox(height: 10.h),
                            GetBuilder<AuthentifcationController>(
                              id: "passwordVisibilty",
                              builder: (_) {
                                return TextFormField(
                          obscureText: true,
                          controller:
                              TextEditingController(text: controller.user.password),
                          onChanged: (val) {
                            controller.user.password= val;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'password is Empty';
                            }
                            return null;
                          },
                          style: TextStyle(fontSize: 30, color: Colors.white),
                          decoration: InputDecoration(
                              errorStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        );
                              },
                            ),
                            GetBuilder<AuthentifcationController>(
                              id: "souvenir",
                              builder: (_) {
                                return SwitchListTile(
                                  value: controller.souvenir,
                                  onChanged: controller.toggle,
                                  title: const Text('se souvenir de moi'),
                                );
                              },
                            ),
                            SizedBox(height: 20.h),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      backgroundColor: HexColor("#4BADD6"),
                                      fixedSize: Size(300.w, 55.h)),
                                  onPressed: () {
                                    if (controller.form.currentState!
                                        .validate()) {
                                      save(context);
                                    }
                                  },
                                  icon: CircleAvatar(
                                      backgroundColor: HexColor("#A8CD6A"),
                                      child: const Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      )),
                                  label: Text("S'identifier".toUpperCase())),
                            )
                          ]),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
