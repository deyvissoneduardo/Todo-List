import 'package:flutter/material.dart';

class RowButtons extends StatelessWidget {
  final void Function()? buttonLogin;
  const RowButtons({Key? key, required this.buttonLogin}) : super(key: key);

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
          onPressed: buttonLogin,
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
