import 'package:get/get.dart';
import 'package:prolab/app/screens/biologist_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
class DossierController extends GetxController {

     List<BiologistFolder> folders = [];

  Future<List<BiologistFolder>> fetchFolders() async {
    final response = await http.get(Uri.parse('http://172.19.144.1:8083/api/v1/folders'));
    if (response.statusCode == 200) {
      final List<dynamic> folderList = jsonDecode(response.body);
      return folderList.map((json) => BiologistFolder.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch folders');
    }
  }

   FilePickerResult? result;

  List<PlatformFile> pickedFile = [];

  File? file;

  Future<void> pickFile() async {
    try {
      result = await FilePicker.platform.pickFiles(type: FileType.any);
      if (result != null) {
        if (pickedFile.isEmpty) {
          pickedFile = result!.files;
        } else {
          if ((pickedFile.first.bytes!.lengthInBytes.toDouble() /
                  (1024 * 1024) <=
              5)) {
            pickedFile.addAll(result!.files);
          } else {
            ScaffoldMessenger.of(Get.context!).showSnackBar(
                const SnackBar(content: Text("Size should be less than 5 MB")));
          }
        }
      }
      update();
      Get.back();
    } catch (e) {
      log(e.toString());
    }
  }

}
