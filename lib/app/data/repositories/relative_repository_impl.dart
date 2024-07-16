import '../../domain/entities/relative.dart';
import '../../domain/repositories/relative_repository.dart';
import '../sources/remote/api_service.dart';

class RelativeRepositoryImpl implements RelativeRepository {
  final ApiService apiService;

  RelativeRepositoryImpl(this.apiService);

  @override
  Future<List<Relative>> fetchRelatives() async {
    final relativesData = await apiService.getRelatives();
    return relativesData.map((relative) => Relative(
      name: relative['name'],
      email: relative['email'],
    )).toList();
  }
}
