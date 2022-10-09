import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/app/routes/app_routes.dart';
import 'package:todo_list/app/service/user/user_service.dart';

class AccountController extends GetxController {
  // services
  final UserService _userService;

  // controller login
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formLogin = GlobalKey<FormState>();

  //controller register

  TextEditingController registeremailController = TextEditingController();
  TextEditingController registerpasswordController = TextEditingController();
  TextEditingController registerpasswordConfirmController =
      TextEditingController();

  AccountController({required UserService userService})
      : _userService = userService;

  Future<void> login() async {
    final formValid = formLogin.currentState?.validate() ?? false;
    if (formValid) {
      final user = await _userService.login(
          emailController.text.trim(), passwordController.text.trim());
      if (user != null) {
        debugPrint('************************');
        debugPrint('$user');
        Get.toNamed(AppRoutes.HOMEPAGE);
      } else {
        Get.snackbar('Error', 'E-mail ou senha invalido.',
            backgroundColor: Colors.red, colorText: Colors.white);
      }
    } else {
      Get.snackbar('Error', 'E-mail ou senha invalido.',
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  Future<void> register() async {
    final user = _userService.register(registeremailController.text.trim(),
        registerpasswordConfirmController.text.trim());
    if (user != null) {
      debugPrint('************************');
      debugPrint('$user');
      Get.toNamed(AppRoutes.HOMEPAGE);
      Get.snackbar('Sucesso', 'Cadastro realizado com sucesso.',
          backgroundColor: Colors.green, colorText: Colors.white);
    } else {
      Get.snackbar('Error', 'Error ao cadastrar-se.1',
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }
}
