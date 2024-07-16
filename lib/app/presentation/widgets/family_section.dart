import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../_core/constants/app_colors.dart';
import '../../infra/providers/relative_provider.dart';

class FamilySection extends StatelessWidget {
  const FamilySection({super.key});

  @override
  Widget build(BuildContext context) {
    final relativeProvider = Provider.of<RelativeProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Minha Família',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: AppColors.backgroundLoginBox,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: relativeProvider.isLoading
                      ? const SizedBox(
                          height: 10,
                          width: 10,
                          child: CircularProgressIndicator())
                      : ListView.builder(
                          itemCount: relativeProvider.relatives.length,
                          itemBuilder: (context, index) {
                            final relative = relativeProvider.relatives[index];
                            return ListTile(
                              title: Text(relative.name),
                              subtitle: Text(relative.email),
                            );
                          },
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
