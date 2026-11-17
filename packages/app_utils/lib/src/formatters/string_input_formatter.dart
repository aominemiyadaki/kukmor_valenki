/// Расширение над [String] для форматирования телефонных номеров, удаления пробелов и замены шаблонов.
extension StringInputFormatter on String {
  /// Удаляет все нецифровые символы
  String withoutSpace() {
    return replaceAll(RegExp('[^0-9]'), '');
  }

  /// Удаляет первый символ строки (если строка не пуста)
  String trimFirstChar() {
    if (isEmpty) return this;
    return substring(1);
  }

  /// Оставляет только цифры
  String toDigitString() {
    return replaceAll(RegExp(r'\D'), '');
  }

  /// Заменяет шаблоны в строке на основе заданных ключей и функции замены.
  ///
  /// Этот метод ищет в строке шаблоны, которые соответствуют ключам, заключенным
  /// в указанные начальный и конечный шаблоны. Каждый найденный шаблон заменяется
  /// результатом вызова [replaceFunction] для соответствующего ключа.
  ///
  /// [keys] - Список ключей, которые нужно искать в строке. Каждый ключ должен быть подстрокой,
  /// заключенной в [beginPattern] и [endPattern].
  ///
  /// [replaceFunction] - Функция, которая принимает ключ и возвращает строку для замены.
  /// Эта функция применяется к каждому найденному в строке ключу.
  ///
  /// [beginPattern] - Строка, обозначающая начало шаблона для замены.
  /// По умолчанию - '<'.
  ///
  /// [endPattern] - Строка, обозначающая конец шаблона для замены.
  /// По умолчанию - '>'.
  ///
  /// Пример:
  /// ```dart
  /// String template = "Привет, <name>! Сегодня <day>.";
  /// String result = template.replacePatterns(
  ///   keys: ['name', 'day'],
  ///   replaceFunction: (key) {
  ///     if (key == 'name') return 'Алиса';
  ///     if (key == 'day') return 'понедельник';
  ///     return '';
  ///   }
  /// );
  /// print(result); // Вывод: Привет, Алиса! Сегодня понедельник.
  /// ```
  String replacePatterns({
    required List<String> keys,
    required String Function(String) replaceFunction,
    String beginPattern = '<',
    String endPattern = '>',
  }) {
    var result = this;
    for (final key in keys) {
      final newValue = replaceFunction(key);
      final pattern = '$beginPattern$key$endPattern';
      result = result.replaceAll(pattern, newValue);
    }
    return result;
  }

  /// Удаляет все лишние символы оставляя только цифры, заменяет первую 7 на 8
  String formatPhoneNumber() {
    return replaceAll(RegExp(r'\D'), '').replaceFirst(RegExp(r'^7'), '8');
  }
}
