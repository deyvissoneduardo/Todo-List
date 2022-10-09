import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/app/core/helper/validator.dart';
import 'package:todo_list/app/page/account/account_controller.dart';
import 'package:todo_list/app/page/account/widgets/appbar_register.dart';
import 'package:todo_list/app/page/widgets/form_field_widget.dart';
import 'package:todo_list/app/page/widgets/todo_list_logo.dart';
import 'package:validatorless/validatorless.dart';

class RegisterPage extends GetView<AccountController> {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formRegister = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppbarRegister(context: context),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.5,
            child: const FittedBox(
              fit: BoxFit.fitHeight,
              child: TodoListLogo(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Form(
              // key: formRegister,
              child: Column(
                children: [
                  FormFieldWidget(
                    label: 'E-mail',
                    controller: controller.registeremailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: Validatorless.multiple([
                      Validatorless.email('e-mail invalido.'),
                      Validatorless.required('campo obrigatorio.'),
                    ]),
                  ),
                  const SizedBox(height: 20),
                  FormFieldWidget(
                    label: 'Senha',
                    controller: controller.registerpasswordController,
                    validator: Validatorless.multiple([
                      Validatorless.required('Campo obrigatorio'),
                      Validatorless.min(6, 'minimo 6 caracters'),
                    ]),
                  ),
                  const SizedBox(height: 20),
                  FormFieldWidget(
                    label: 'Confirma Senha',
                    validator: Validatorless.multiple([
                      Validatorless.required('Campo obrigatorio'),
                      Validator.compare(
                        controller.registerpasswordConfirmController,
                        'Senhas nao conferem',
                      )
                    ]),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {
                        // final formValid =
                        //     formRegister.currentState?.validate() ?? false;
                        // debugPrint('************************');
                        // debugPrint('$formValid');
                        // if (formValid) {
                        //   controller.register();
                        // }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Salvar'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
