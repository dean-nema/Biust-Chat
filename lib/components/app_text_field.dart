import 'package:flutter/material.dart';
import 'package:stuff_neh/styles/app_colors.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
        labelText: hint,
        labelStyle: const TextStyle(
          color: Color.fromARGB(255, 226, 222, 245),
        ),
        border: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))
            ),
        focusedBorder: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Colors.transparent)
        ),
        filled: true,
        fillColor: AppColors.fieldColor,
      ),
    );
  }
}
