// ignore_for_file: prefer_initializing_formals

import 'package:bloc_extensions/bloc_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:size_guide/src/domain/repositories/size_guide_repository.dart';
import 'package:size_guide/src/presentation/navigation/size_guide_navigator.dart';

part 'size_guide_cubit.freezed.dart';
part 'size_guide_state.dart';

class SizeGuideCubit extends BaseCubit<SizeGuideState> {
  SizeGuideCubit({
    required SizeGuideRepository repository,
    SizeGuideNavigator? navigator,
    bool autoWatch = true,
  }) : _repository = repository,
       _navigator = navigator,
       super(const SizeGuideState()) {
    if (autoWatch) {
      updateFootLength(26.5);
    }
  }

  final SizeGuideRepository _repository;
  // ignore: unused_field
  final SizeGuideNavigator? _navigator;

  void updateFootLength(double lengthCm) {
    final recommendation = _repository.calculateSize(lengthCm);
    emit(state.copyWith(
      status: SizeGuideStatus.success,
      currentFootLength: lengthCm,
      recommendation: recommendation,
    ));
  }
}
