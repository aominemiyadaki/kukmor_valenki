import 'package:logger/logger.dart';

class CleanLogPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    final message = event.message;
    final levelStr = _levelPrefix(event.level);
    final buffer = <String>['$levelStr $message'];

    if (event.error != null) {
      buffer.add('  Error: ${event.error}');
    }
    if (event.stackTrace != null) {
      buffer.add('  StackTrace: ${event.stackTrace}');
    }

    return buffer;
  }

  String _levelPrefix(Level level) {
    switch (level) {
      case Level.info:
        return '[INFO]';
      case Level.warning:
        return '[WARN]';
      case Level.error:
        return '[ERROR]';
      case Level.debug:
        return '[SUCCESS]';
      case Level.trace:
        return '[TRACE]';
      case Level.fatal:
        return '[FATAL]';
      default:
        return '[LOG]';
    }
  }
}

/// Единый фасад логирования проекта
/// Используется во всех Cubit, репозиториях и сервисах (скилл flutter-cubit)
abstract final class AppLogger {
  static final Logger _logger = Logger(
    filter: DevelopmentFilter(),
    printer: CleanLogPrinter(),
  );

  /// Информационное сообщение
  static void info(String message) {
    _logger.i(message);
  }

  /// Успешное действие (зеленый лог/отметка)
  static void success(String message) {
    _logger.d(message);
  }

  /// Предупреждение
  static void warning(String message) {
    _logger.w(message);
  }

  /// Ошибка с опциональным исключением и стеком
  static void error(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }
}
