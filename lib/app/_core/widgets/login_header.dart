import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../infra/providers/login_provider.dart';
import '../constants/app_colors.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {
            loginProvider.isLogin = true;
            loginProvider.notifyListeners();
          },
          child: Text(
            'Entrar',
            maxLines: 1,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: loginProvider.isLogin
                  ? AppColors.primaryColor
                  : AppColors.white,
              decoration: loginProvider.isLogin
                  ? TextDecoration.underline
                  : TextDecoration.none,
            ),
          ),
        ),
        const SizedBox(width: 12),
        TextButton(
          onPressed: () {
            loginProvider.isLogin = false;
            loginProvider.notifyListeners();
          },
          child: Text(
            'Cadastrar',
            maxLines: 1,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: !loginProvider.isLogin
                  ? AppColors.primaryColor
                  : AppColors.white,
              decoration: !loginProvider.isLogin
                  ? TextDecoration.underline
                  : TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}
