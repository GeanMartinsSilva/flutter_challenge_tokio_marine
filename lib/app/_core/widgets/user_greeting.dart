import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class UserGreeting extends StatelessWidget {
  const UserGreeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Olá!', style: TextStyle(fontSize: 16)),
          Row(
            children: [
              SizedBox(
                width: 40,
                child: Image.asset('assets/avatar.png'),
              ),
              const SizedBox(width: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CAIO MAXIMO',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Minha conta',
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                      Icon(Icons.arrow_drop_down_outlined),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
