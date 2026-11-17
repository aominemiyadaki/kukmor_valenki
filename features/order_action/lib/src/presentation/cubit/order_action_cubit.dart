// ignore_for_file: prefer_initializing_formals

import 'package:app_utils/app_utils.dart';
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

  Future<void> orderViaTelegram({
    required ValenkiProduct product,
    required String message,
  }) async {
    emit(state.copyWith(status: OrderActionStatus.launching));
    final ok = await _repository.launchTelegramOrder(product: product, message: message);
    if (ok) {
      emit(state.copyWith(
        status: OrderActionStatus.launched,
        lastActionKey: UiLocalizationKeys.orderTelegramSuccess,
      ));
      emitUiEvent(const ShowToastEvent(uiKey: UiLocalizationKeys.orderTelegramSuccess));
    } else {
      emit(state.copyWith(
        status: OrderActionStatus.failure,
        lastActionKey: UiLocalizationKeys.orderTelegramFailed,
      ));
      emitUiEvent(const ErrorUiEvent(uiKey: UiLocalizationKeys.orderTelegramFailed));
    }
  }

  Future<void> orderViaWhatsApp({
    required ValenkiProduct product,
    required String message,
  }) async {
    emit(state.copyWith(status: OrderActionStatus.launching));
    final ok = await _repository.launchWhatsAppOrder(product: product, message: message);
    if (ok) {
      emit(state.copyWith(
        status: OrderActionStatus.launched,
        lastActionKey: UiLocalizationKeys.orderWhatsAppSuccess,
      ));
      emitUiEvent(const ShowToastEvent(uiKey: UiLocalizationKeys.orderWhatsAppSuccess));
    } else {
      emit(state.copyWith(
        status: OrderActionStatus.failure,
        lastActionKey: UiLocalizationKeys.orderWhatsAppFailed,
      ));
      emitUiEvent(const ErrorUiEvent(uiKey: UiLocalizationKeys.orderWhatsAppFailed));
    }
  }

  Future<void> callPhone() async {
    await _repository.launchPhoneCall();
  }

  Future<void> openChannel() async {
    await _repository.launchTelegramChannel();
  }
}
