import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'app/_core/utils/validator.dart';
import 'app/app_module.dart';
import 'app/app_widget.dart';
import 'app/infra/providers/relative_provider.dart';
import 'app/infra/providers/url_provider.dart';
import 'app/infra/providers/login_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const storage = FlutterSecureStorage();
  await storage.write(key: 'automovel_url', value: 'https://www.linkedin.com/in/gean-martins-silva/');
  await storage.write(key: 'api_url', value: 'https://jsonplaceholder.typicode.com/users');

  runApp(const MyAppModule());
}

class MyAppModule extends StatelessWidget {
  const MyAppModule({super.key});

  @override
  Widget build(BuildContext context) {
    return ModularApp(
      module: AppModule(),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LoginProvider(Validator())),
          ChangeNotifierProvider(create: (_) => RelativeProvider()),
          Provider(create: (_) => UrlProvider()),
        ],
        child: const MyApp(),
      ),
    );
  }
}
