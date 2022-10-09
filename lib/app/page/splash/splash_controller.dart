import 'package:get/get.dart';
import 'package:todo_list/app/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();
    await load();
  }

  Future<void> load() async {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAllNamed(AppRoutes.ACCOUNTPAGE),
    );
  }
}
