import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarHome extends PreferredSize {
  final BuildContext context;
  AppbarHome({super.key, required this.context})
      : super(
            preferredSize: const Size(double.infinity, 56),
            child: AppBar(
              iconTheme: IconThemeData(color: context.theme.primaryColor),
              backgroundColor: context.theme.bottomAppBarColor,
              elevation: 0,
              actions: [
                PopupMenuButton(
                  icon: const Icon(Icons.filter),
                  itemBuilder: (_) => [
                    const PopupMenuItem<bool>(
                      child: Text('Tarefas Concluidas'),
                    )
                  ],
                )
              ],
            ));
}
