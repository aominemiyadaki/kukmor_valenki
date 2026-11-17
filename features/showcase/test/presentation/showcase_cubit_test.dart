import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:showcase/src/domain/repositories/showcase_repository.dart';
import 'package:showcase/src/presentation/cubit/showcase_cubit.dart';
import 'package:showcase/src/presentation/navigation/showcase_navigator.dart';

class MockShowcaseRepository extends Mock implements ShowcaseRepository {}

class MockShowcaseNavigator extends Mock implements ShowcaseNavigator {}

void main() {
  late MockShowcaseRepository mockRepository;
  late MockShowcaseNavigator mockNavigator;

  setUp(() {
    mockRepository = MockShowcaseRepository();
    mockNavigator = MockShowcaseNavigator();
    when(() => mockRepository.getProducts(category: any(named: 'category')))
        .thenAnswer((_) async => []);
  });

  ShowcaseCubit buildCubit({bool autoWatch = false}) {
    return ShowcaseCubit(
      repository: mockRepository,
      navigator: mockNavigator,
      autoWatch: autoWatch,
    );
  }

  group('ShowcaseCubit', () {
    test('initial state is correct', () async {
      final cubit = buildCubit();
      expect(cubit.state.status, ShowcaseStatus.init);
      expect(cubit.state.isInitial, isTrue);
      await cubit.close();
    });

    test('loadData emits loading then success on success', () async {
      final cubit = buildCubit();
      final future = cubit.loadData();
      expect(cubit.state.isLoading, isTrue);
      await future;
      expect(cubit.state.isSuccess, isTrue);
      await cubit.close();
    });
  });
}
