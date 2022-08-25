import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paidwik/routes/app_pages.dart';
import 'package:paidwik/routes/app_routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return  GetMaterialApp(
          initialRoute: AppRoutes.sigUp,
          getPages: AppPages.list,
        );
      },
    );
  }
}