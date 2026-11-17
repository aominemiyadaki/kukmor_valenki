import 'package:flutter/widgets.dart';

/// Базовый класс для одиночных UI-команд (диалоги, модалки, тосты, алерты)
abstract class UiEvent {
  UiEvent([this.message, this.uiKey]);

  String? message;
  final String? uiKey;
}

/// Команда показа ошибки в UI (снэкбар/алерт)
class ErrorUiEvent extends UiEvent {
  ErrorUiEvent([super.message, super.uiKey]);
}

/// Команда показа всплывающего уведомления
class ShowToastEvent extends UiEvent {
  ShowToastEvent(
    String message, {
    String? uiKey,
    this.isError = false,
    this.icon,
    this.duration = const Duration(seconds: 3),
  }) : super(message, uiKey);

  final bool isError;
  final IconData? icon;
  final Duration duration;
}

/// Команда открытия модального окна (BottomSheet)
class ShowModalEvent extends UiEvent {
  ShowModalEvent({
    required this.builder,
    this.isScrollControlled = true,
    this.useRootNavigator = false,
    this.backgroundColor,
    this.barrierDismissible = true,
    String? message,
    String? uiKey,
  }) : super(message, uiKey);

  final Widget Function(BuildContext context) builder;
  final bool isScrollControlled;
  final bool useRootNavigator;
  final Color? backgroundColor;
  final bool barrierDismissible;
}

/// Команда открытия диалогового окна (AlertDialog / Dialog)
class ShowDialogEvent extends UiEvent {
  ShowDialogEvent({
    required this.builder,
    this.barrierDismissible = true,
    this.useRootNavigator = true,
    String? message,
    String? uiKey,
  }) : super(message, uiKey);

  final Widget Function(BuildContext context) builder;
  final bool barrierDismissible;
  final bool useRootNavigator;
}
