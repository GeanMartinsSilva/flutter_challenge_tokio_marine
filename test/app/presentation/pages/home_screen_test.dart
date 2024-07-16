import 'package:flutter/material.dart';
import 'package:flutter_challenge_tokio_marine/app/infra/providers/relative_provider.dart';
import 'package:flutter_challenge_tokio_marine/app/infra/providers/url_provider.dart';
import 'package:flutter_challenge_tokio_marine/app/presentation/pages/home_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('HomeScreen displays all sections', (WidgetTester tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => RelativeProvider()),
          Provider(create: (_) => UrlProvider()),
        ],
        child: const MaterialApp(
          home: HomeScreen(),
        ),
      ),
    );

    expect(find.text('Bem-vindo'), findsOneWidget);
    expect(find.text('Cotar e Contratar'), findsOneWidget);
    expect(find.text('Minha Família'), findsOneWidget);
    expect(find.text('Contratados'), findsOneWidget);
  });
}
