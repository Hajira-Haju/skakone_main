import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:skakone/routes/app_routes/app_routes.dart';

import '../../presentation/new_leave_screen/binding/new_leave_binding.dart';
import '../../presentation/new_leave_screen/new_leave_screen.dart';

class PageList {
  static var pageList = [
    GetPage(
      name: AppRoutes.newLeaveScreen,
      page: () => NewLeaveScreen(),
      binding: NewLeaveBinding(),
    ),
  ];
}
