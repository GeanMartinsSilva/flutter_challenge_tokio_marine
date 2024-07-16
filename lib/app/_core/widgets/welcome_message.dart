import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
                height: 25,
                width: 25,
                child: Image.asset('assets/tokio_marine_logo_white.png')),
            SizedBox(
                height: 25, child: Image.asset('assets/logo-tokio-text.png')),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          'Bem-vindo!',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Aqui você garante seus seguros e de seus familiares em poucos cliques!',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
