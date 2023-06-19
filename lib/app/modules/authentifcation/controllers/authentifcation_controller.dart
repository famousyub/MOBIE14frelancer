import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prolab/app/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:prolab/app/screens/add_dossier_screen.dart';
import 'dart:convert';

import 'package:prolab/app/screens/dashboard.dart';
class AuthentifcationController extends GetxController {
  final GlobalKey<FormState> form = GlobalKey<FormState>();
  bool souvenir = false;
  bool passwordVisibilty = true;


   User user = User("", "");
  String url = "http://localhost:8083/api/auth/signin";


   Future save(BuildContext context, User user ) async {


    print(user.usernameOrEmail);
    print(user.password);
    var res = await http.post(Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'usernameOrEmail': user.usernameOrEmail, 'password': user.password}));
    print(res.body);
   /* if (res.body != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>   AddTaskScreen(),
          ));
    }*/
  }
  void toggleVisiblity() {
    passwordVisibilty = !passwordVisibilty;
    update(["passwordVisibilty"]);
  }

  void toggle(bool value) {
    souvenir = value;
    update(["souvenir"]);
  }
}
