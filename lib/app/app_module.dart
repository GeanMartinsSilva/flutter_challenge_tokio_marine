import 'package:flutter_modular/flutter_modular.dart';
import 'presentation/pages/home_screen.dart';
import 'presentation/pages/login_screen.dart';
import 'presentation/pages/webview_screen.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const LoginScreen());
    r.child('/home', child: (context) => const HomeScreen());
    r.child('/webview', child: (context) => WebViewScreen(url: r.args.data));
  }
}