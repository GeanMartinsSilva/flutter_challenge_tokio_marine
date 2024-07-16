import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import '../../infra/providers/url_provider.dart';
import '../../_core/constants/app_colors.dart';
import 'dart:html' as html;
import 'dart:io' show Platform;

class CategoryCard extends StatelessWidget {
  final String title;
  final String icon;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlProvider = Provider.of<UrlProvider>(context, listen: false);

    return GestureDetector(
      onTap: () async {
        if (title == 'Automóvel') {
          String? url = await urlProvider.getAutomovelUrl();
          if (url != null) {
            if (kIsWeb) {
              html.window.open(url, '_blank');
            } else if (Platform.isAndroid || Platform.isIOS) {
              Modular.to.pushNamed('/webview', arguments: url);
            }
          }
        }
      },
      child: Card(
        color: AppColors.cardWidget,
        child: Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(width: 50, child: Image.asset('assets/$icon')),
              ),
              Text(title, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
