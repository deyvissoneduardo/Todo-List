import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:todo_list/app/routes/app_routes.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffF0F3F7),
          border: Border(
            top: BorderSide(
              width: 2,
              color: Colors.grey.withAlpha(50),
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Não tem conta?'),
                  TextButton(
                      onPressed: () => Get.toNamed(AppRoutes.REGISTERPAGE),
                      child: const Text('Cadastre-se')),
                ],
              ),
              SignInButton(
                Buttons.Google,
                text: 'Continue com o Google',
                padding: const EdgeInsets.all(5),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
