import 'package:domain_shared/domain_shared.dart';

abstract interface class ShowcaseRepository {
  Future<List<ValenkiProduct>> getProducts({ValenkiCategory? category});
  Future<ValenkiProduct?> getProductById(String id);
}
