/// Константы ключей пользовательского интерфейса и системных сообщений Stream Saver.
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

  // Сеть и VPN (network_status)
  static const networkConnected = 'network_connected';
  static const networkDisconnected = 'network_disconnected';
  static const networkRestored = 'network_restored';
  static const vpnActive = 'vpn_active';
  static const vpnInactive = 'vpn_inactive';

  // Загрузчик видео (video_downloader)
  static const videoSavedSuccess = 'video_saved_success';
  static const videoDownloadFailed = 'video_download_failed';
  static const videoDownloadCancelled = 'video_download_cancelled';
  static const insufficientDiskSpace = 'insufficient_disk_space';
  static const historyCleared = 'history_cleared';
  static const itemDeleted = 'item_deleted';

  // Браузер (web_browser)
  static const pageLoadFailed = 'page_load_failed';
  static const urlObserverReady = 'url_observer_ready';
  static const tabClosed = 'tab_closed';

  // Диалоги и подтверждения
  static const clearHistoryConfirmTitle = 'clear_history_confirm_title';
  static const clearHistoryConfirmContent = 'clear_history_confirm_content';

  // Ошибки по умолчанию
  static const unknownError = 'unknown_error';
  static const operationCompleted = 'operation_completed';
}
