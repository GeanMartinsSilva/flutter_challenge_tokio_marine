import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/app_colors.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? errorText;
  final bool obscureText;

  const LoginTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.errorText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        errorText: errorText,
        hintText: hintText,
        filled: true,
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: errorText == null ? AppColors.white : Colors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: errorText == null ? AppColors.white : Colors.red,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        hintStyle: const TextStyle(color: Colors.white),
      ),
      cursorColor: AppColors.primaryColor,
      keyboardType:
          hintText == 'CPF' ? TextInputType.number : TextInputType.text,
      inputFormatters: hintText == 'CPF'
          ? [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(11)
            ]
          : [LengthLimitingTextInputFormatter(8)],
      textAlign: TextAlign.center,
      obscureText: obscureText,
      style: const TextStyle(color: Colors.white),
    );
  }
}
