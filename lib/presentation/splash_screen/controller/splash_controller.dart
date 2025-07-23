import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  final box = GetStorage();

  @override
  void onInit() {
    // TODO: implement onInit
    navigate();
    super.onInit();
  }
  void navigate() {
    Future.delayed(
      const Duration(seconds: 3),() {
      // token != null ? Get.offAllNamed(AppRoutes.bottomNavScreen)  : Get.offAllNamed(AppRoutes.bottomNavScreen);
    },
    );
  }
  }
