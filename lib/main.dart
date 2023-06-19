import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: "Prolab",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                colorSchemeSeed: const Color(0xFF4BADD6),
                appBarTheme: const AppBarTheme(
                    backgroundColor: Colors.transparent, elevation: 0)),
            initialRoute: Routes.AUTHENTIFCATION,
            getPages: AppPages.routes,
          );
        }),
  );
}
