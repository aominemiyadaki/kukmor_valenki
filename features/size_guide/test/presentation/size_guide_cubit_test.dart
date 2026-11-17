import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:size_guide/src/domain/repositories/size_guide_repository.dart';
import 'package:size_guide/src/presentation/cubit/size_guide_cubit.dart';
import 'package:size_guide/src/presentation/navigation/size_guide_navigator.dart';

class MockSizeGuideRepository extends Mock implements SizeGuideRepository {}

class MockSizeGuideNavigator extends Mock implements SizeGuideNavigator {}

void main() {
  late MockSizeGuideRepository mockRepository;
  late MockSizeGuideNavigator mockNavigator;

  setUp(() {
    mockRepository = MockSizeGuideRepository();
    mockNavigator = MockSizeGuideNavigator();
    when(() => mockRepository.calculateSize(any())).thenReturn(
      const SizeRecommendation(
        footLengthCm: 26.5,
        regularSize: 41,
        valenkiSize: 42,
        note: 'Рекомендуем 42 размер',
      ),
    );
  });

  SizeGuideCubit buildCubit({bool autoWatch = false}) {
    return SizeGuideCubit(
      repository: mockRepository,
      navigator: mockNavigator,
      autoWatch: autoWatch,
    );
  }

  group('SizeGuideCubit', () {
    test('initial state is correct', () async {
      final cubit = buildCubit();
      expect(cubit.state.status, SizeGuideStatus.init);
      await cubit.close();
    });

    test('updateFootLength updates recommendation', () async {
      final cubit = buildCubit();
      cubit.updateFootLength(27);
      expect(cubit.state.status, SizeGuideStatus.success);
      expect(cubit.state.recommendation?.valenkiSize, 42);
      await cubit.close();
    });
  });
}
