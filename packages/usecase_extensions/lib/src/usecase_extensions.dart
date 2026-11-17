import 'dart:async';

import 'package:app_logger/app_logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Миксин для безопасного и удобного выполнения UseCase в Cubit / Bloc
/// Полностью повторяет архитектурный стандарт проекта booking_app
mixin UseCaseProcessor<State> on BlocBase<State> {
  final List<StreamSubscription<dynamic>> _subscriptions = [];

  /// Асинхронное выполнение UseCase (Future)
  Future<void> processUseCase<T>(
    Future<T> Function() useCaseCall, {
    required void Function(T result) onSuccess,
    void Function(Object error, StackTrace stackTrace)? onError,
  }) async {
    try {
      final result = await useCaseCall();
      if (isClosed) return;
      onSuccess(result);
    } catch (error, stackTrace) {
      if (isClosed) return;
      if (onError != null) {
        onError(error, stackTrace);
      } else {
        handleDefaultError(error, stackTrace);
      }
    }
  }

  /// Синхронное выполнение UseCase
  void processSyncUseCase<T>(
    T Function() useCaseCall, {
    required void Function(T result) onSuccess,
    void Function(Object error, StackTrace stackTrace)? onError,
  }) {
    try {
      final result = useCaseCall();
      if (isClosed) return;
      onSuccess(result);
    } catch (error, stackTrace) {
      if (isClosed) return;
      if (onError != null) {
        onError(error, stackTrace);
      } else {
        handleDefaultError(error, stackTrace);
      }
    }
  }

  /// Реактивное выполнение UseCase через Stream (с сохранением подписки для автоочистки)
  void processStreamUseCase<T>(
    Stream<T> Function() streamCall, {
    required void Function(T data) onData,
    void Function(Object error, StackTrace stackTrace)? onError,
  }) {
    final subscription = streamCall().listen(
      (data) {
        if (!isClosed) onData(data);
      },
      onError: (Object error, [StackTrace? stackTrace]) {
        if (isClosed) return;
        final trace = stackTrace ?? StackTrace.current;
        if (onError != null) {
          onError(error, trace);
        } else {
          handleDefaultError(error, trace);
        }
      },
    );

    _subscriptions.add(subscription);
  }

  /// Дефолтный обработчик ошибок с выводом через AppLogger
  void handleDefaultError(Object error, StackTrace stackTrace) {
    AppLogger.error(
      '[UseCaseProcessor] Unhandled error',
      error,
      stackTrace,
    );
  }

  /// Закрытие всех активных StreamSubscription
  void closeSubs() {
    for (final sub in _subscriptions) {
      sub.cancel();
    }
    _subscriptions.clear();
  }
}
