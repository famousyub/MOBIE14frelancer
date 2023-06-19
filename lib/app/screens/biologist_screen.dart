import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BiologistFolder {
  final int id;
  final String name;
  final String description;

  BiologistFolder({required this.id, required this.name, required this.description});

  factory BiologistFolder.fromJson(Map<String, dynamic> json) {
    return BiologistFolder(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
  }
}

class BiologistFolderScreen extends StatefulWidget {

    const BiologistFolderScreen({Key? key}) : super(key: key);
  @override
  _BiologistFolderScreenState createState() => _BiologistFolderScreenState();
}

class _BiologistFolderScreenState extends State<BiologistFolderScreen> {
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

  @override
  void initState() {
    super.initState();
    fetchFolders().then((folders) {
      setState(() {
        this.folders = folders;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biologist Folders'),
      ),
      body: ListView.builder(
        itemCount: folders.length,
        itemBuilder: (context, index) {
          final folder = folders[index];
          return ListTile(
            title: Text(folder.name),
            subtitle: Text(folder.description),
          );
        },
      ),
    );
  }
}


