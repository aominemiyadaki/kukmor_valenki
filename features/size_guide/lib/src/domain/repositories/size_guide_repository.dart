class SizeRecommendation {
  final double footLengthCm;
  final int regularSize;
  final int valenkiSize;
  final int allowanceMm;

  const SizeRecommendation({
    required this.footLengthCm,
    required this.regularSize,
    required this.valenkiSize,
    this.allowanceMm = 6,
  });
}

abstract interface class SizeGuideRepository {
  SizeRecommendation calculateSize(double footLengthCm);
  Map<int, double> getSizeTable();
}
