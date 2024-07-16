import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UrlProvider extends ChangeNotifier {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<String?> getAutomovelUrl() async {
    return await storage.read(key: 'automovel_url');
  }

  Future<String?> getApiUrl() async {
    return await storage.read(key: 'api_url');
  }
}
