import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class DrawerFooter extends StatelessWidget {
  const DrawerFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.primaryColor, AppColors.accentColor],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 50,
                child: Image.asset('assets/marina-with-interrogation.png'),
              ),
              const Text(
                'Dúvidas?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              const Text(
                'Converse agora mesmo a Marine\ne tire suas dúvidas agora mesmo.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
