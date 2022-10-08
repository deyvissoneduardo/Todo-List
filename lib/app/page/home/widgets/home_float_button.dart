import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeFloatButton extends StatelessWidget {
  const HomeFloatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: context.theme.primaryColor,
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }
}
