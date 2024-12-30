import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/routes/app_pages.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initPage,
      getPages: AppPages.allRoutes,
      unknownRoute: AppPages.unknownRoute,
    );
  }
}
