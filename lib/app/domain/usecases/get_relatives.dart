import '../entities/relative.dart';
import '../repositories/relative_repository.dart';

class GetRelatives {
  final RelativeRepository repository;

  GetRelatives(this.repository);

  Future<List<Relative>> call() async {
    return await repository.fetchRelatives();
  }
}
