import 'package:meta/meta.dart';

/// Базовый класс для всех бизнес- и системных исключений приложения
/// Реализован строго по скиллу flutter-app-exception
@immutable
sealed class AppException implements Exception {
  const AppException(
    this.message, {
    this.code,
    this.originalError,
    this.stackTrace,
  });

  /// Понятное пользователю сообщение об ошибке
  final String message;

  /// Уникальный машиночитаемый код ошибки (например, 'DB_WRITE_FAILED')
  final String? code;

  /// Исходное исключение (SQLite error, I/O error и др.)
  final Object? originalError;

  /// Стек вызовов
  final StackTrace? stackTrace;

  @override
  String toString() {
    final buffer = StringBuffer('AppException: $message');
    if (code != null) buffer.write(' (code: $code)');
    if (originalError != null) buffer.write(' | Cause: $originalError');
    return buffer.toString();
  }
}

/// Ошибки при работе с локальной базой данных Drift/SQLite
class DatabaseException extends AppException {
  const DatabaseException(
    super.message, {
    super.code = 'DATABASE_ERROR',
    super.originalError,
    super.stackTrace,
  });
}

/// Ошибки валидации пользовательского ввода (неверный формат даты, цены, телефона)
class ValidationException extends AppException {
  const ValidationException(
    super.message, {
    super.code = 'VALIDATION_ERROR',
    super.originalError,
    super.stackTrace,
  });
}

/// Ошибки при расчете финансовых формул, комиссий и баланса
class CalculationException extends AppException {
  const CalculationException(
    super.message, {
    super.code = 'CALCULATION_ERROR',
    super.originalError,
    super.stackTrace,
  });
}

/// Ошибки файловой системы (сохранение фото «до/после», кэш)
class StorageException extends AppException {
  const StorageException(
    super.message, {
    super.code = 'STORAGE_ERROR',
    super.originalError,
    super.stackTrace,
  });
}

/// Непредвиденные или неклассифицированные ошибки
class UnknownException extends AppException {
  const UnknownException(
    super.message, {
    super.code = 'UNKNOWN_ERROR',
    super.originalError,
    super.stackTrace,
  });
}

/// Ошибки сетевых запросов и взаимодействия с внешними API (Gemini и др.)
class NetworkException extends AppException {
  const NetworkException(
    super.message, {
    super.code = 'NETWORK_ERROR',
    super.originalError,
    super.stackTrace,
  });
}

/// Ошибки работы AI-ассистента (неверный API ключ, исчерпан лимит, парсинг ответа)
class AiAssistantException extends AppException {
  const AiAssistantException(
    super.message, {
    super.code = 'AI_ASSISTANT_ERROR',
    super.originalError,
    super.stackTrace,
  });
}
