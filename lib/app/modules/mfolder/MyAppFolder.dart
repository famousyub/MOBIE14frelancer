
import 'package:flutter/material.dart';
import 'package:prolab/app/models/dossier_data.dart';
import 'package:prolab/app/screens/biologist_screen.dart';
import 'package:prolab/app/screens/home_screen.dart';
import 'package:provider/provider.dart';
class MyAppFolder extends StatelessWidget {
  const MyAppFolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const  BiologistFolderScreen(),
    );
  
    
    
  }
}