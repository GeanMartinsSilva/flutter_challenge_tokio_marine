import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../_core/utils/validator.dart';

class LoginProvider extends ChangeNotifier {
  final Validator validator;
  bool isLogin = true;
  bool obscurePassword = true;
  bool rememberMe = false;

  final TextEditingController cpfController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isCPFValid = true;
  bool isPasswordValid = true;

  LoginProvider(this.validator) {
    cpfController.addListener(onCPFChanged);
  }

  void onCPFChanged() {
    if (cpfController.text.length == 11) {
      isCPFValid = validator.isValidCPF(cpfController.text);
      formKey.currentState?.validate();
      notifyListeners();
    } else {
      isCPFValid = true;
      notifyListeners();
    }
  }

  void tryLogin() {
    isPasswordValid = validator.isValidPassword(passwordController.text);
    isCPFValid = validator.isValidCPF(cpfController.text);
    notifyListeners();

    if (formKey.currentState!.validate() && isPasswordValid && isCPFValid) {
      Modular.to.pushReplacementNamed('/home');
    } else {
      final context = formKey.currentContext;
      if (context != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Por favor, preencha todos os campos corretamente')),
        );
      }
    }
  }

  void toggleRememberMe(bool? value) {
    rememberMe = value ?? false;
    notifyListeners();
  }
}
