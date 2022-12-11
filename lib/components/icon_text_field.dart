import 'package:flutter/material.dart';

class IconTextField extends StatelessWidget {
  const IconTextField(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      this.obscureText = false});

  final String hintText;
  final Icon prefixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIconColor: Theme.of(context).colorScheme.error,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60.0),
            ),
            filled: true,
            fillColor: Theme.of(context).colorScheme.background,
            contentPadding: const EdgeInsets.all(15),
            isCollapsed: true,
            hintText: hintText),
      ),
    );
  }
}
