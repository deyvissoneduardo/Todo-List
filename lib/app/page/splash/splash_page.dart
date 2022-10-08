import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/app/page/widgets/todo_list_logo.dart';
import './splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: context.theme.backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TodoListLogo(),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: LinearProgressIndicator(
                color: context.theme.primaryColorLight,
                valueColor:
                    AlwaysStoppedAnimation<Color>(context.theme.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
