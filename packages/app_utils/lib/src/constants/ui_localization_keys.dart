/// Константы ключей пользовательского интерфейса и системных сообщений.
///
/// Используются в Cubit для событий и ошибок вместо сырого текста,
/// позволяя презентационному слою разрешать их через локализацию (ARB ICU select).
abstract class UiLocalizationKeys {
  // Базовые действия
  static const back = 'back';
  static const retry = 'retry';
  static const cancel = 'cancel';
  static const delete = 'delete';
  static const clear = 'clear';
  static const close = 'close';
  static const save = 'save';
  static const refresh = 'refresh';

  // Оформление заказа (order_action)
  static const orderTelegramSuccess = 'order_telegram_success';
  static const orderTelegramFailed = 'order_telegram_failed';
  static const orderWhatsAppSuccess = 'order_whatsapp_success';
  static const orderWhatsAppFailed = 'order_whatsapp_failed';

  // Каталог витрины (showcase)
  static const catalogLoadFailed = 'catalog_load_failed';
  static const emptyCatalog = 'empty_catalog';

  // Калькулятор размеров (size_guide)
  static const sizeCalculationSuccess = 'size_calculation_success';

  // Ошибки по умолчанию
  static const unknownError = 'unknown_error';
  static const operationCompleted = 'operation_completed';
}
