import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../constants/app_colors.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Modular.to.pushReplacementNamed('/');
      },
      child: const Text(
        'Sair',
        style: TextStyle(color: AppColors.primaryColor),
      ),
    );
  }
}
