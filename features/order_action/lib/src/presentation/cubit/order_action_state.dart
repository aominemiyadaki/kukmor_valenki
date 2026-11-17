part of 'order_action_cubit.dart';

enum OrderActionStatus { init, loading, launching, launched, failure }

@Freezed(makeCollectionsUnmodifiable: false)
abstract class OrderActionState with _$OrderActionState {
  const factory OrderActionState({
    @Default(OrderActionStatus.init) OrderActionStatus status,
    String? lastActionKey,
  }) = _OrderActionState;

  const OrderActionState._();

  bool get isInitial => status == OrderActionStatus.init;
  bool get isLoading => status == OrderActionStatus.loading || status == OrderActionStatus.launching;
  bool get isSuccess => status == OrderActionStatus.launched;
  bool get isFailure => status == OrderActionStatus.failure;
}
