
import 'package:flutter/material.dart';
import 'package:prolab/app/models/dossier_data.dart';
import 'package:prolab/app/screens/home_screen.dart';
import 'package:provider/provider.dart';
class MyAppDossier extends StatelessWidget {
  const MyAppDossier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DossiersData>(
      create: (context) => DossiersData(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}