import 'package:flutter/material.dart';
import 'package:flutter_quickstart_getx/common/routes/app_pages.dart';
import 'package:get/get.dart';

/**
 * 这玩意类似 Java 的 Filter
 */
class RouteAuthMiddleware extends GetMiddleware {
  // @override
  // int? priority = 0;
  //
  // RouteAuthMiddleware({this.priority});

  @override
  RouteSettings? redirect(String? route) {
    // 写自己的业务

    Future.delayed(Duration(seconds: 1), () {
      Get.snackbar("Alert", "Please Login First");
    });

    return RouteSettings(name: AppRoutes.Login);
  }
}
