import 'package:baca_kuy/routes/app_pages.dart';
import 'package:baca_kuy/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Baca Kuy',
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.HOME,
      getPages: AppPages.pages,
    );
  }
}
