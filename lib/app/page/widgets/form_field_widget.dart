import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  final String label;
  final bool obscureText;
  final IconButton? sufixIconButton;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  const FormFieldWidget({
    Key? key,
    required this.label,
    this.sufixIconButton,
    this.keyboardType,
    this.focusNode,
    this.obscureText = false,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      focusNode: focusNode,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(fontSize: 15, color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.red),
        ),
        isDense: true,
      ),
      obscureText: obscureText,
    );
  }
}
