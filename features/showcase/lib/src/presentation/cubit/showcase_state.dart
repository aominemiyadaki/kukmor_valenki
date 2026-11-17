part of 'showcase_cubit.dart';

enum ShowcaseStatus { init, loading, failure, success }

@Freezed(makeCollectionsUnmodifiable: false)
abstract class ShowcaseState with _$ShowcaseState {
  const factory ShowcaseState({
    @Default(ShowcaseStatus.init) ShowcaseStatus status,
    @Default([]) List<ValenkiProduct> products,
    @Default(ValenkiCategory.all) ValenkiCategory selectedCategory,
    ValenkiProduct? selectedProductForOrder,
    int? selectedSize,
    String? errorMessage,
  }) = _ShowcaseState;

  const ShowcaseState._();

  bool get isInitial => status == ShowcaseStatus.init;
  bool get isLoading => status == ShowcaseStatus.loading;
  bool get isSuccess => status == ShowcaseStatus.success;
  bool get isFailure => status == ShowcaseStatus.failure;
}
