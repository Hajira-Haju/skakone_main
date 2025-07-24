import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:skakone/presentation/login_screen/login_scren.dart';
import 'package:skakone/presentation/new_leave_screen/new_leave_screen.dart';
import 'package:skakone/presentation/splash_screen/splash_screen.dart';
import 'package:skakone/presentation/welcome_screen/welcome_screen.dart';
import 'package:skakone/routes/app_routes/app_routes.dart';
import 'package:skakone/routes/page_list/page_list.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final box = GetStorage();
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        title: 'SkakOne',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        ),
        initialRoute: AppRoutes.newLeaveScreen, // 👈 use this
        getPages: PageList.pageList,
        // home: NewLeaveScreen(),
      ),
    );
  }
}
