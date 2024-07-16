import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class LoginButtonContent extends StatelessWidget {
  const LoginButtonContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kIsWeb ? 80 : MediaQuery.sizeOf(context).width * 0.20,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.primaryColor,
            AppColors.accentColor,
          ],
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Icon(
          Icons.arrow_forward,
          size: 50,
        ),
      ),
    );
  }
}
