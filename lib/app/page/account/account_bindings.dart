import 'package:get/get.dart';
import 'package:todo_list/app/repository/user/user_repository.dart';
import 'package:todo_list/app/service/user/user_service.dart';
import './account_controller.dart';

class AccountBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(UserRepository());

    Get.put(UserService(userRepository: Get.find<UserRepository>()));

    Get.put(AccountController(userService: Get.find<UserService>()));
  }
}
