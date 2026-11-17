import 'dart:async';

import 'package:bloc_extensions/src/ui_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usecase_extensions/usecase.dart';

export 'package:usecase_extensions/usecase.dart';

export 'src/ui_event.dart';
export 'src/ui_widget_mixin.dart';

/// Базовый класс для классического Bloc (по стандарту booking_app)
abstract class BaseBloc<Event, State> extends Bloc<Event, State>
    with UseCaseProcessor {
  BaseBloc(super.initialState);

  @override
  Future<void> close() {
    closeSubs();
    return super.close();
  }
}

/// Базовый класс для Cubit (по стандарту booking_app)
/// Автоматически предоставляет processUseCase, processSyncUseCase, processStreamUseCase
/// и стрим одиночных UI-команд uiEvents через openModal(UiEvent).
abstract class BaseCubit<State> extends Cubit<State> with UseCaseProcessor {
  BaseCubit(super.initialState);

  final _uiEventController = StreamController<UiEvent>.broadcast();

  /// Стрим для одиночных UI-команд (тосты, модалки, навигационные триггеры)
  Stream<UiEvent> get uiEvents => _uiEventController.stream;

  /// Отправка UI-команды
  void openModal(UiEvent event) {
    if (!_uiEventController.isClosed && !isClosed) {
      _uiEventController.add(event);
    }
  }

  @override
  Future<void> close() {
    closeSubs();
    _uiEventController.close();
    return super.close();
  }
}
