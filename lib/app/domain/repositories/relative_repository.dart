import '../entities/relative.dart';

abstract class RelativeRepository {
  Future<List<Relative>> fetchRelatives();
}
