import 'package:flutter/material.dart';
import '../../_core/constants/app_colors.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [AppColors.primaryColor, AppColors.accentColor],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            SizedBox(width: 50, child: Image.asset('assets/avatar.png')),
            const SizedBox(width: 10),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bem-vindo',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'CAIO MAXIMO',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
