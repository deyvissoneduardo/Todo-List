import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/app/page/account/account_bindings.dart';
import 'package:todo_list/app/page/account/account_page.dart';
import 'package:todo_list/app/page/home/home_bindings.dart';
import 'package:todo_list/app/page/home/home_page.dart';
import 'package:todo_list/app/page/splash/splash_bindings.dart';
import 'package:todo_list/app/page/splash/splash_page.dart';

class AppRoutes {
  static const SPLASHPAGE = '/splash_page';
  static const ACCOUNTPAGE = '/account_page';
  static const HOMEPAGE = '/home_page';

  static List<GetPage<Widget>> pages = [
    GetPage(
      name: AppRoutes.ACCOUNTPAGE,
      transitionDuration: const Duration(seconds: 1),
      transition: Transition.fade,
      curve: Curves.linear,
      page: () => const AccountPage(),
      bindings: [AccountBindings()],
    ),
    GetPage(
      name: AppRoutes.SPLASHPAGE,
      transitionDuration: const Duration(seconds: 1),
      transition: Transition.fade,
      curve: Curves.linear,
      page: () => const SplashPage(),
      bindings: [SplashBindings()],
    ),
    GetPage(
      name: AppRoutes.HOMEPAGE,
      transitionDuration: const Duration(seconds: 1),
      transition: Transition.fade,
      curve: Curves.linear,
      page: () => const HomePage(),
      bindings: [HomeBindings()],
    ),
  ];
}
