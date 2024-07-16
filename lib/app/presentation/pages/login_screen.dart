import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../_core/constants/app_colors.dart';
import '../../_core/widgets/login_text_field.dart';
import '../../_core/widgets/login_header.dart';
import '../../_core/widgets/remember_me_and_forgot_password.dart';
import '../../_core/widgets/social_login.dart';
import '../../_core/widgets/welcome_message.dart';
import '../../_core/widgets/login_button_content.dart';
import '../../infra/providers/login_provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [AppColors.primaryColor, AppColors.accentColor],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(color: AppColors.backgroundColor),
              ),
            ],
          ),
          Padding(
            padding: kIsWeb
                ? EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width * 0.2)
                : const EdgeInsets.only(top: 40.0, left: 40, right: 40),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const WelcomeMessage(),
                    const SizedBox(height: 50),
                    ConstrainedBox(
                      constraints: const BoxConstraints(minWidth: 500),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 30.0,
                              horizontal: 20.0,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.backgroundLoginBox,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 500,
                            height: 325,
                            child: Form(
                              key: loginProvider.formKey,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const LoginHeader(),
                                  LoginTextField(
                                    controller: loginProvider.cpfController,
                                    hintText: 'CPF',
                                    errorText: loginProvider.isCPFValid
                                        ? null
                                        : 'CPF inválido',
                                  ),
                                  LoginTextField(
                                    controller:
                                        loginProvider.passwordController,
                                    hintText: 'Senha',
                                    errorText: loginProvider.isPasswordValid
                                        ? null
                                        : 'A senha deve ter entre 6 e 8 dígitos',
                                    obscureText: true,
                                  ),
                                  RememberMeAndForgotPassword(
                                    rememberMe: loginProvider.rememberMe,
                                    onRememberMeChanged:
                                        loginProvider.toggleRememberMe,
                                  ),
                                  const SizedBox(height: 15),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: kIsWeb ? -50 : -40,
                            child: Row(
                              children: [
                                Container(
                                    color: Colors.transparent, width: 200),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    backgroundColor: const Color(0xFF2A2A39),
                                    padding:
                                        const EdgeInsets.all(kIsWeb ? 20 : 20),
                                    elevation: 10,
                                    shadowColor: Colors.black.withOpacity(0.5),
                                  ),
                                  onPressed: loginProvider.tryLogin,
                                  child: const LoginButtonContent(),
                                ),
                                Container(
                                    color: Colors.transparent, width: 200),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 80),
                    const SocialLogin(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
