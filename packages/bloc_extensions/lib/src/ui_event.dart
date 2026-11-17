import 'package:flutter/widgets.dart';

/// Базовый класс для одиночных UI-команд (диалоги, модалки, тосты, алерты)
abstract class UiEvent {
  const UiEvent({this.message, this.uiKey});

  final String? message;
  final String? uiKey;
}

/// Команда показа ошибки в UI (снэкбар/алерт)
class ErrorUiEvent extends UiEvent {
  const ErrorUiEvent({super.message, super.uiKey});
}

/// Команда показа всплывающего уведомления
class ShowToastEvent extends UiEvent {
  const ShowToastEvent({
    super.message,
    super.uiKey,
    this.isError = false,
    this.icon,
    this.duration = const Duration(seconds: 3),
  });

  final bool isError;
  final IconData? icon;
  final Duration duration;
}

/// Команда открытия модального окна (BottomSheet)
class ShowModalEvent extends UiEvent {
  const ShowModalEvent({
    required this.builder,
    this.isScrollControlled = true,
    this.useRootNavigator = false,
    this.backgroundColor,
    this.barrierDismissible = true,
    super.message,
    super.uiKey,
  });

  final Widget Function(BuildContext context) builder;
  final bool isScrollControlled;
  final bool useRootNavigator;
  final Color? backgroundColor;
  final bool barrierDismissible;
}

/// Команда открытия диалогового окна (AlertDialog / Dialog)
class ShowDialogEvent extends UiEvent {
  const ShowDialogEvent({
    required this.builder,
    this.barrierDismissible = true,
    this.useRootNavigator = true,
    super.message,
    super.uiKey,
  });

  final Widget Function(BuildContext context) builder;
  final bool barrierDismissible;
  final bool useRootNavigator;
}
