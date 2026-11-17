import 'package:size_guide/src/domain/repositories/size_guide_repository.dart';

final class SizeGuideRepositoryImpl implements SizeGuideRepository {
  // Стандартная сетка: размер -> длина стопы в см
  static const Map<int, double> _sizeMap = {
    24: 15.0,
    25: 15.5,
    26: 16.5,
    27: 17.0,
    28: 17.5,
    29: 18.5,
    30: 19.0,
    31: 19.5,
    35: 22.5,
    36: 23.0,
    37: 23.5,
    38: 24.5,
    39: 25.0,
    40: 25.5,
    41: 26.5,
    42: 27.0,
    43: 27.5,
    44: 28.5,
    45: 29.0,
    46: 29.5,
    47: 30.5,
  };

  @override
  Map<int, double> getSizeTable() => _sizeMap;

  @override
  SizeRecommendation calculateSize(double footLengthCm) {
    var foundRegularSize = 41;
    for (final entry in _sizeMap.entries) {
      if (entry.value >= footLengthCm) {
        foundRegularSize = entry.key;
        break;
      }
      foundRegularSize = entry.key;
    }

    // Правило Кукмора: для валенок рекомендуется брать на 1 размер больше обычной обуви под теплый носок
    final valenkiSize = foundRegularSize + 1;

    return SizeRecommendation(
      footLengthCm: footLengthCm,
      regularSize: foundRegularSize,
      valenkiSize: valenkiSize,
      note: 'Для длины стопы $footLengthCm см стандартный размер — $foundRegularSize. Мы рекомендуем $valenkiSize размер кукморских валенок с комфортным припуском 5–8 мм под шерстяной носок.',
    );
  }
}
