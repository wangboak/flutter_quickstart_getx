import 'package:flutter/material.dart';
import 'package:flutter_quickstart_getx/common/routes/app_pages.dart';
import 'package:flutter_quickstart_getx/pages/list_detail/index.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: ListView(
        children: [
          // 路由&导航
          ListTile(
            title: Text("导航-命名路由 home > list"),
            subtitle: Text('Get.toNamed("/home/list")'),
            onTap: () => Get.toNamed("/home/list"),
          ),
          ListTile(
            title: Text("导航-命名路由 home > list > detail"),
            subtitle: Text('Get.toNamed("/home/list/detail")'),
            onTap: () => Get.toNamed("/home/list/detail"),
          ),
          ListTile(
            title: Text("导航-类对象"),
            subtitle: Text("Get.to(DetailView())"),
            onTap: () => Get.to(DetailView()),
          ),
          ListTile(
            title: Text("导航-清除上一个"),
            subtitle: Text("Get.off(DetailView())"),
            onTap: () => Get.off(DetailView()),
          ),
          ListTile(
            title: Text("导航-清除所有"),
            subtitle: Text("Get.offAll(DetailView())"),
            onTap: () => Get.offAll(DetailView()),
          ),

          ListTile(
            title: Text("导航-arguments传值+返回值"),
            subtitle: Text(
                'Get.toNamed("/home/list/detail", arguments: {"id": 999})'),
            onTap: () async {
              var result = await Get.toNamed(
                "/home/list/detail",
                arguments: {"id": 999},
              );

              if (result == null) {
                Get.snackbar("返回值", "success -> result is null");
              } else {
                Get.snackbar(
                    "返回值", "success -> " + result["success"].toString());
              }
            },
          ),

          ListTile(
            title: Text("导航-parameters传值+返回值"),
            subtitle: Text('Get.toNamed("/home/list/detail?id=666")'),
            onTap: () async {
              var result = await Get.toNamed("/home/list/detail?id=666");
              Get.snackbar("返回值", "success -> " + result["success"].toString());
            },
          ),

          ListTile(
            title: Text("导航-参数传值+返回值"),
            subtitle: Text('Get.toNamed("/home/list/detail/777")'),
            onTap: () async {
              var result = await Get.toNamed("/home/list/detail/777");
              Get.snackbar("返回值", "success -> " + result["success"].toString());
            },
          ),

          // 404
          ListTile(
            title: Text("导航-notfound"),
            subtitle: Text('Get.toNamed("/abc/def")'),
            onTap: () => Get.toNamed("/abc/def"), // 注意，如果路由为 /home/abc/def,
            // 因为/home 可以找到，所以会进入 /home 页面。
          ),

          // 测试需要登录态。
          ListTile(
            title: Text("导航-中间件-认证Auth"),
            subtitle: Text('Get.toNamed(AppRoutes.My)'),
            onTap: () => Get.toNamed(AppRoutes.My),
          ),

          // Transition 转场动画





          Divider(),
        ],
      ),
    );
  }
}
