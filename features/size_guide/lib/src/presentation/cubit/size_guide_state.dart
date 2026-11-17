part of 'size_guide_cubit.dart';

enum SizeGuideStatus { init, loading, failure, success }

@Freezed(makeCollectionsUnmodifiable: false)
abstract class SizeGuideState with _$SizeGuideState {
  const factory SizeGuideState({
    @Default(SizeGuideStatus.init) SizeGuideStatus status,
    @Default(26.5) double currentFootLength,
    SizeRecommendation? recommendation,
    String? errorKey,
  }) = _SizeGuideState;

  const SizeGuideState._();

  bool get isInitial => status == SizeGuideStatus.init;
  bool get isLoading => status == SizeGuideStatus.loading;
  bool get isSuccess => status == SizeGuideStatus.success;
  bool get isFailure => status == SizeGuideStatus.failure;
}
