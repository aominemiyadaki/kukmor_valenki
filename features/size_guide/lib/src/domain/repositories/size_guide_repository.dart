class SizeRecommendation {
  final double footLengthCm;
  final int regularSize;
  final int valenkiSize;
  final String note;

  const SizeRecommendation({
    required this.footLengthCm,
    required this.regularSize,
    required this.valenkiSize,
    required this.note,
  });
}

abstract interface class SizeGuideRepository {
  SizeRecommendation calculateSize(double footLengthCm);
  Map<int, double> getSizeTable();
}
