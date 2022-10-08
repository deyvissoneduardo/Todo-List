import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:todo_list/app/core/ui/default_theme.dart';
import 'package:todo_list/app/page/splash/splash_page.dart';
import 'package:todo_list/app/routes/app_routes.dart';
import 'package:todo_list/app_bindings.dart';

void main() {
  runApp(GetMaterialApp(
    showSemanticsDebugger: false,
    initialBinding: AppBindings(),
    theme: DefaultTheme.theme,
    initialRoute: AppRoutes.SPLASHPAGE,
    getPages: AppRoutes.pages,
    home: const SplashPage(),
  ));
}
