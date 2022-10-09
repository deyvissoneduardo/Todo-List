import 'package:get/get.dart';
import 'package:todo_list/app/service/user/user_service.dart';
import './account_controller.dart';

class AccountBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AccountController(userService: Get.find<UserService>()));
  }
}
