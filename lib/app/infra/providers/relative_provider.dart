import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../domain/usecases/get_relatives.dart';
import '../../domain/entities/relative.dart';
import '../../data/repositories/relative_repository_impl.dart';
import '../../data/sources/remote/api_service.dart';

class RelativeProvider extends ChangeNotifier {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  List<Relative> relatives = [];
  bool isLoading = true;
  late GetRelatives getRelatives;

  RelativeProvider() {
    _initialize();
  }

  Future<void> _initialize() async {
    final apiUrl = await storage.read(key: 'api_url');
    if (apiUrl != null) {
      getRelatives = GetRelatives(
        RelativeRepositoryImpl(
          ApiService(apiUrl),
        ),
      );
      fetchRelatives();
    } else {
      // Handle the error case where the API URL is not found
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> fetchRelatives() async {
    relatives = await getRelatives.call();
    isLoading = false;
    notifyListeners();
  }
}
