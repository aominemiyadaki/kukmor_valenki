// ignore_for_file: prefer_initializing_formals

import 'package:bloc_extensions/bloc_extensions.dart';
import 'package:domain_shared/domain_shared.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_action/src/domain/repositories/order_action_repository.dart';
import 'package:order_action/src/presentation/navigation/order_action_navigator.dart';

part 'order_action_cubit.freezed.dart';
part 'order_action_state.dart';

class OrderActionCubit extends BaseCubit<OrderActionState> {
  OrderActionCubit({
    required OrderActionRepository repository,
    OrderActionNavigator? navigator,
  }) : _repository = repository,
       _navigator = navigator,
       super(const OrderActionState());

  // ignore: unused_field
  final OrderActionRepository _repository;
  // ignore: unused_field
  final OrderActionNavigator? _navigator;

  Future<void> orderViaTelegram({required ValenkiProduct product, int? size}) async {
    emit(state.copyWith(status: OrderActionStatus.launching));
    final ok = await _repository.launchTelegramOrder(product: product, size: size);
    emit(state.copyWith(
      status: ok ? OrderActionStatus.launched : OrderActionStatus.failure,
      message: ok ? 'Переход в Telegram...' : 'Не удалось открыть Telegram',
    ));
  }

  Future<void> orderViaWhatsApp({required ValenkiProduct product, int? size}) async {
    emit(state.copyWith(status: OrderActionStatus.launching));
    final ok = await _repository.launchWhatsAppOrder(product: product, size: size);
    emit(state.copyWith(
      status: ok ? OrderActionStatus.launched : OrderActionStatus.failure,
      message: ok ? 'Переход в WhatsApp...' : 'Не удалось открыть WhatsApp',
    ));
  }

  Future<void> callPhone() async {
    await _repository.launchPhoneCall();
  }
}
