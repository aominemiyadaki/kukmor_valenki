import 'dart:async';

import 'package:bloc_extensions/bloc_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Миксин для автоматического управления подпиской на UI-события (модалки, алерты, тосты)
/// Полностью повторяет архитектурный стандарт clean architecture
mixin UiEventMixin<W extends StatefulWidget, C extends BaseCubit<Object?>>
    on State<W> {
  StreamSubscription<UiEvent>? _uiEventSubscription;

  @override
  void initState() {
    super.initState();
    _subscribe();
  }

  void _subscribe() {
    _uiEventSubscription = context.read<C>().uiEvents.listen((event) {
      if (!mounted) return;
      handleUiEvent(event);
      onUiEvent(event);
    });
  }

  /// Автоматическая обработка стандартных событий openModal (ShowModalEvent, ShowDialogEvent, Toast)
  void handleUiEvent(UiEvent event) {
    if (event is ErrorUiEvent) {
      final message = resolveEventMessage(event);
      _showToast(message.isNotEmpty ? message : 'Error', isError: true);
    } else if (event is ShowToastEvent) {
      final message = resolveEventMessage(event);
      _showToast(
        message,
        isError: event.isError,
        icon: event.icon,
        duration: event.duration,
      );
    } else if (event is ShowModalEvent) {
      showModalBottomSheet<void>(
        context: context,
        isScrollControlled: event.isScrollControlled,
        useRootNavigator: event.useRootNavigator,
        backgroundColor: event.backgroundColor ?? Colors.transparent,
        builder: event.builder,
      );
    } else if (event is ShowDialogEvent) {
      showDialog<void>(
        context: context,
        barrierDismissible: event.barrierDismissible,
        useRootNavigator: event.useRootNavigator,
        builder: event.builder,
      );
    }
  }

  /// Разрешает сообщение события (через uiKey или сырой message)
  String resolveEventMessage(UiEvent event) {
    if (event.uiKey != null) {
      final custom = onResolveUiKey(event.uiKey!);
      if (custom != null) return custom;
    }
    return event.message ?? '';
  }

  /// Точка расширения для локализации ключей UiLocalizationKeys
  String? onResolveUiKey(String uiKey) => null;

  void _showToast(
    String message, {
    bool isError = false,
    IconData? icon,
    Duration duration = const Duration(seconds: 3),
  }) {
    final messenger = ScaffoldMessenger.maybeOf(context);
    if (messenger == null) return;

    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(
      SnackBar(
        content: Row(
          children: [
            if (icon != null) ...[
              Icon(icon, color: Colors.white, size: 20),
              const SizedBox(width: 8),
            ] else if (isError) ...[
              const Icon(Icons.error_outline, color: Colors.white, size: 20),
              const SizedBox(width: 8),
            ] else ...[
              const Icon(Icons.check_circle_outline, color: Colors.white, size: 20),
              const SizedBox(width: 8),
            ],
            Expanded(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        backgroundColor: isError ? Colors.red.shade700 : Colors.green.shade700,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        duration: duration,
      ),
    );
  }

  /// Этот метод может переопределить класс State для кастомной реакции на события
  void onUiEvent(UiEvent event) {}

  @override
  void dispose() {
    _uiEventSubscription?.cancel();
    super.dispose();
  }
}
