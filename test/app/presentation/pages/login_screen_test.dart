import 'package:flutter/material.dart';
import 'package:flutter_challenge_tokio_marine/app/_core/utils/validator.dart';
import 'package:flutter_challenge_tokio_marine/app/infra/providers/login_provider.dart';
import 'package:flutter_challenge_tokio_marine/app/presentation/pages/login_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('LoginScreen displays all elements', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => LoginProvider(Validator()),
        child: const MaterialApp(
          home: LoginScreen(),
        ),
      ),
    );

    expect(find.text('Bem-vindo!'), findsOneWidget);
    expect(find.text('CPF'), findsOneWidget);
    expect(find.text('Senha'), findsOneWidget);
    expect(find.text('Lembrar Sempre'), findsOneWidget);
    expect(find.text('Esqueceu a senha?'), findsOneWidget);
    expect(find.text('Acesse através das redes sociais'), findsOneWidget);
  });
}
