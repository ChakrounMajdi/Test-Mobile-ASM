import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_asm/app_pages.dart';
import 'package:test_mobile_asm/bindings/app_binding.dart';
import 'package:test_mobile_asm/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialBinding: AppBinding(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: theme(),
    );
  }
}
