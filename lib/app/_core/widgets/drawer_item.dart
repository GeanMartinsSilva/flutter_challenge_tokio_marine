import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  const DrawerItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.settings,
        color: AppColors.primaryColor,
      ),
      title: Text(title),
      onTap: () {},
    );
  }
}
