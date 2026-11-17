// ignore_for_file: prefer_initializing_formals

import 'package:app_utils/app_utils.dart';
import 'package:bloc_extensions/bloc_extensions.dart';
import 'package:domain_shared/domain_shared.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase/src/domain/repositories/showcase_repository.dart';
import 'package:showcase/src/presentation/navigation/showcase_navigator.dart';

part 'showcase_cubit.freezed.dart';
part 'showcase_state.dart';

class ShowcaseCubit extends BaseCubit<ShowcaseState> {
  ShowcaseCubit({
    required ShowcaseRepository repository,
    ShowcaseNavigator? navigator,
    bool autoWatch = true,
  }) : _repository = repository,
       _navigator = navigator,
       super(const ShowcaseState()) {
    if (autoWatch) {
      loadData();
    }
  }

  final ShowcaseRepository _repository;
  // ignore: unused_field
  final ShowcaseNavigator? _navigator;

  Future<void> loadData() async {
    emit(state.copyWith(status: ShowcaseStatus.loading));
    await processUseCase(
      () => _repository.getProducts(category: state.selectedCategory),
      onSuccess: (products) {
        emit(state.copyWith(
          status: ShowcaseStatus.success,
          products: products,
        ));
      },
      onError: (error, st) {
        emit(state.copyWith(
          status: ShowcaseStatus.failure,
          errorKey: UiLocalizationKeys.catalogLoadFailed,
        ));
        emitUiEvent(const ErrorUiEvent(uiKey: UiLocalizationKeys.catalogLoadFailed));
      },
    );
  }

  Future<void> selectCategory(ValenkiCategory category) async {
    if (state.selectedCategory == category) return;
    emit(state.copyWith(
      selectedCategory: category,
      status: ShowcaseStatus.loading,
    ));
    await processUseCase(
      () => _repository.getProducts(category: category),
      onSuccess: (products) {
        emit(state.copyWith(
          status: ShowcaseStatus.success,
          products: products,
        ));
      },
      onError: (error, st) {
        emit(state.copyWith(
          status: ShowcaseStatus.failure,
          errorKey: UiLocalizationKeys.catalogLoadFailed,
        ));
        emitUiEvent(const ErrorUiEvent(uiKey: UiLocalizationKeys.catalogLoadFailed));
      },
    );
  }

  void selectProductForOrder(ValenkiProduct product, {int? size}) {
    emit(state.copyWith(
      selectedProductForOrder: product,
      selectedSize: size ?? (product.availableSizes.isNotEmpty ? product.availableSizes.first : null),
    ));
  }

  void selectSize(int size) {
    emit(state.copyWith(selectedSize: size));
  }

  void clearSelection() {
    emit(state.copyWith(
      selectedProductForOrder: null,
      selectedSize: null,
    ));
  }
}
