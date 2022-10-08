import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/app/routes/app_routes.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          child: const Text('Esqueceu sua senha?'),
          onPressed: () {},
        ),
        ElevatedButton(
          onPressed: () => Get.toNamed(AppRoutes.HOMEPAGE),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Login'),
          ),
        )
      ],
    );
  }
}
