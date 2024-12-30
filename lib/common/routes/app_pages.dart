import 'package:flutter_quickstart_getx/common/middleware/router_auth.dart';
import 'package:flutter_quickstart_getx/pages/home/index.dart';
import 'package:flutter_quickstart_getx/pages/list/index.dart';
import 'package:flutter_quickstart_getx/pages/list_detail/index.dart';
import 'package:flutter_quickstart_getx/pages/login/index.dart';
import 'package:flutter_quickstart_getx/pages/my/index.dart';
import 'package:flutter_quickstart_getx/pages/notfound/index.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const String initPage = AppRoutes.Home;

  // 404
  static final unknownRoute = GetPage(
    name: AppRoutes.NotFound,
    page: () => NotfoundView(),
  );

  static final List<GetPage> allRoutes = [
    // 白名单
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginView(),
      transition: Transition.native,
    ),

    // 需要登录的页面
    GetPage(
      name: AppRoutes.My,
      page: () => MyView(),
      middlewares: [
        RouteAuthMiddleware(),
      ],
    ),

    GetPage(
      name: AppRoutes.Home,
      page: () => HomeView(),
      children: [
        GetPage(
          name: AppRoutes.List,
          page: () => ListView(),
          children: [
            GetPage(
              name: AppRoutes.Detail,
              page: () => DetailView(),
            ),
            GetPage(
              name: AppRoutes.Detail_ID,
              page: () => DetailView(),
            ),
          ],
        ),
      ],
    ),
  ];
}
