// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'order_action_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class OrderActionLocalizationsEn extends OrderActionLocalizations {
  OrderActionLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get orderActionTitle => 'Quick Order';

  @override
  String get orderActionSubtitle => 'Order via Telegram or WhatsApp';

  @override
  String get errorDefault => 'An error occurred';

  @override
  String get orderTelegramButton => 'Order via Telegram';

  @override
  String get orderWhatsAppButton => 'Order via WhatsApp';

  @override
  String orderTelegramMessage(String productTitle, int price, String sizeText) {
    return 'Hello! I would like to order: $productTitle (price: $price RUB$sizeText). Is it in stock and can it be shipped?';
  }

  @override
  String orderWhatsAppMessage(String productTitle, int price, String sizeText) {
    return 'Hello! I would like to order: $productTitle (price: $price RUB$sizeText). Is it in stock and can it be shipped?';
  }

  @override
  String sizeTextFormat(int size) {
    return ', size: $size';
  }

  @override
  String actionMessage(String key) {
    String _temp0 = intl.Intl.selectLogic(key, {
      'order_telegram_success': 'Order created, opening Telegram...',
      'order_telegram_failed': 'Could not open Telegram',
      'order_whatsapp_success': 'Order created, opening WhatsApp...',
      'order_whatsapp_failed': 'Could not open WhatsApp',
      'other': 'Operation completed',
    });
    return '$_temp0';
  }
}
