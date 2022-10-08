import 'package:get/get.dart';
import 'package:todo_list/app/page/account/account_bindings.dart';
import 'package:todo_list/app/page/home/home_bindings.dart';
import 'package:todo_list/app/page/splash/splash_bindings.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    SplashBindings().dependencies();
    AccountBindings().dependencies();
    HomeBindings().dependencies();
  }
}
