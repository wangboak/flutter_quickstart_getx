import 'package:flutter/material.dart';
import 'package:flutter_quickstart_getx/common/routes/app_pages.dart';
import 'package:get/get.dart';

class MyView extends StatelessWidget {
  const MyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("个人Profile页"),
      ),
      body: ListTile(
        title: Text("返回"),
        subtitle: Text('Get.back()'),
        onTap: () => Get.back(),
      ),
    );
  }
}
