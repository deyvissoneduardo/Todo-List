import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarRegister extends PreferredSize {
  final BuildContext context;
  AppbarRegister({super.key, required this.context})
      : super(
          preferredSize: const Size(double.infinity, 56),
          child: AppBar(
            backgroundColor: context.theme.bottomAppBarColor,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Todo List',
                  style: TextStyle(
                      fontSize: 12, color: context.theme.primaryColor),
                ),
                Text(
                  'Cadastro',
                  style: TextStyle(
                      fontSize: 15, color: context.theme.primaryColor),
                ),
              ],
            ),
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: ClipOval(
                child: Container(
                  color: context.theme.primaryColor.withAlpha(20),
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 20,
                    color: context.theme.primaryColor,
                  ),
                ),
              ),
            ),
          ),
        );
}
