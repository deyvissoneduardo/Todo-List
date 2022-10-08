import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/app/page/account/widgets/login_footer.dart';
import 'package:todo_list/app/page/account/widgets/row_buttons.dart';
import 'package:todo_list/app/page/widgets/form_field_widget.dart';
import 'package:todo_list/app/page/widgets/todo_list_logo.dart';
import './account_controller.dart';

class AccountPage extends GetView<AccountController> {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
                minWidth: constraints.maxWidth),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: context.theme.backgroundColor,
              padding: const EdgeInsets.all(10.0),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TodoListLogo(),
                    const SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      child: Form(
                        child: Column(
                          children: const [
                            FormFieldWidget(
                              label: 'Login',
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(height: 10.0),
                            FormFieldWidget(label: 'Senha'),
                            SizedBox(height: 10),
                            RowButtons()
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const LoginFooter(),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
