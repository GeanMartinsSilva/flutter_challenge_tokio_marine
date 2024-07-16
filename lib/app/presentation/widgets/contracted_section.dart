import 'package:flutter/material.dart';
import '../../_core/constants/app_colors.dart';

class ContractedSection extends StatelessWidget {
  const ContractedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contratados',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 200,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: AppColors.backgroundLoginBox,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Você ainda não possui seguros contratados.')
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
