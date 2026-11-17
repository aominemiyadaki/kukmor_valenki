// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'order_action_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class OrderActionLocalizationsRu extends OrderActionLocalizations {
  OrderActionLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get orderActionTitle => 'Быстрый заказ';

  @override
  String get orderActionSubtitle => 'Заказ через Telegram или WhatsApp';

  @override
  String get errorDefault => 'Произошла ошибка';

  @override
  String get orderTelegramButton => 'Заказать в Telegram';

  @override
  String get orderWhatsAppButton => 'Заказать в WhatsApp';

  @override
  String orderTelegramMessage(String productTitle, int price, String sizeText) {
    return 'Здравствуйте! Хочу заказать: $productTitle (цена: $price ₽$sizeText). Подскажите наличие и доставку СДЭК?';
  }

  @override
  String orderWhatsAppMessage(String productTitle, int price, String sizeText) {
    return 'Здравствуйте! Хочу заказать: $productTitle (цена: $price ₽$sizeText). Подскажите наличие и доставку?';
  }

  @override
  String sizeTextFormat(int size) {
    return ', размер: $size';
  }

  @override
  String actionMessage(String key) {
    String _temp0 = intl.Intl.selectLogic(key, {
      'order_telegram_success': 'Заказ сформирован, переход в Telegram...',
      'order_telegram_failed': 'Не удалось открыть Telegram',
      'order_whatsapp_success': 'Заказ сформирован, переход в WhatsApp...',
      'order_whatsapp_failed': 'Не удалось открыть WhatsApp',
      'other': 'Операция выполнена',
    });
    return '$_temp0';
  }
}
