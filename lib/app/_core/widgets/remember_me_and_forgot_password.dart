import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class RememberMeAndForgotPassword extends StatelessWidget {
  final bool rememberMe;
  final ValueChanged<bool?> onRememberMeChanged;

  const RememberMeAndForgotPassword({
    super.key,
    required this.rememberMe,
    required this.onRememberMeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              height: 10,
              width: 10,
              child: Checkbox(
                value: rememberMe,
                onChanged: onRememberMeChanged,
                shape: const CircleBorder(),
                activeColor: AppColors.primaryColor,
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              'Lembrar Sempre',
              maxLines: 1,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Esqueceu a senha?',
            maxLines: 1,
            style: TextStyle(
                color: AppColors.primaryColor, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
