import 'package:get/get.dart';
import 'package:skakone/presentation/new_leave_screen/controller/new_leave_contoller.dart';

class NewLeaveBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(NewLeaveController());
  }
  
}