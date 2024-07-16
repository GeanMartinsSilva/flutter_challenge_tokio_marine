import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '_core/constants/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Tokio Marine Flutter Challenge',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.primaryColor,
        hintColor: AppColors.accentColor,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundColor,
        ),
      ),
      themeMode: ThemeMode.dark,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
