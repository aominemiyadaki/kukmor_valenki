import 'package:app_utils/app_utils.dart';
import 'package:domain_shared/domain_shared.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:order_action/src/domain/repositories/order_action_repository.dart';
import 'package:order_action/src/presentation/cubit/order_action_cubit.dart';
import 'package:order_action/src/presentation/navigation/order_action_navigator.dart';

class MockOrderActionRepository extends Mock implements OrderActionRepository {}

class MockOrderActionNavigator extends Mock implements OrderActionNavigator {}

class FakeValenkiProduct extends Fake implements ValenkiProduct {}

void main() {
  late MockOrderActionRepository mockRepository;
  late MockOrderActionNavigator mockNavigator;

  setUpAll(() {
    registerFallbackValue(FakeValenkiProduct());
  });

  setUp(() {
    mockRepository = MockOrderActionRepository();
    mockNavigator = MockOrderActionNavigator();
    when(() => mockRepository.launchTelegramOrder(
          product: any(named: 'product'),
          message: any(named: 'message'),
        )).thenAnswer((_) async => true);
  });

  OrderActionCubit buildCubit() {
    return OrderActionCubit(
      repository: mockRepository,
      navigator: mockNavigator,
    );
  }

  group('OrderActionCubit', () {
    test('initial state is correct', () async {
      final cubit = buildCubit();
      expect(cubit.state.status, OrderActionStatus.init);
      await cubit.close();
    });

    test('orderViaTelegram emits launching then launched on success', () async {
      final cubit = buildCubit();
      const product = ValenkiProduct(
        id: '1',
        title: 'Test',
        subtitle: 'Sub',
        category: ValenkiCategory.men,
        price: 1000,
        availableSizes: [42],
        soleType: SoleType.tep,
        imageUrl: '',
        description: '',
      );

      final future = cubit.orderViaTelegram(product: product, message: 'Order message');
      expect(cubit.state.status, OrderActionStatus.launching);
      await future;
      expect(cubit.state.status, OrderActionStatus.launched);
      expect(cubit.state.lastActionKey, UiLocalizationKeys.orderTelegramSuccess);
      await cubit.close();
    });
  });
}
