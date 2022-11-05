import 'package:ecommerce_design_app/presentation/home/view/home_view.dart';
import 'package:ecommerce_design_app/presentation/resources/routes_manager.dart';
import 'package:ecommerce_design_app/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   // statusBarConfig();
    return GetMaterialApp(
      theme: getAppTheme(context),
      getPages: RoutesManager.routesList,
      initialRoute: Routes.homeRoute,
      debugShowCheckedModeBanner: false,
    );
  }
  void statusBarConfig() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light),
    );
  }
}


