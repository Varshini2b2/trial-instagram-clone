import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPassed;
  final String hinText;
  final TextInputType textInputType;

  const TextFieldInput({
    Key? key,
    required this.textEditingController,
    required this.textInputType,
    required this.hinText,
    this.isPassed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
        borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: hinText,
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
       ),
      keyboardType: textInputType,
      obscureText: isPassed,
      );
  }
}