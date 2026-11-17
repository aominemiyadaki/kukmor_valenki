import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'order_action_localizations_en.dart';
import 'order_action_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of OrderActionLocalizations
/// returned by `OrderActionLocalizations.of(context)`.
///
/// Applications need to include `OrderActionLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/order_action_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: OrderActionLocalizations.localizationsDelegates,
///   supportedLocales: OrderActionLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the OrderActionLocalizations.supportedLocales
/// property.
abstract class OrderActionLocalizations {
  OrderActionLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static OrderActionLocalizations? of(BuildContext context) {
    return Localizations.of<OrderActionLocalizations>(
      context,
      OrderActionLocalizations,
    );
  }

  static const LocalizationsDelegate<OrderActionLocalizations> delegate =
      _OrderActionLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru'),
  ];

  /// No description provided for @orderActionTitle.
  ///
  /// In ru, this message translates to:
  /// **'Быстрый заказ'**
  String get orderActionTitle;

  /// No description provided for @orderActionSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Заказ через Telegram или WhatsApp'**
  String get orderActionSubtitle;

  /// No description provided for @errorDefault.
  ///
  /// In ru, this message translates to:
  /// **'Произошла ошибка'**
  String get errorDefault;

  /// No description provided for @orderTelegramButton.
  ///
  /// In ru, this message translates to:
  /// **'Заказать в Telegram'**
  String get orderTelegramButton;

  /// No description provided for @orderWhatsAppButton.
  ///
  /// In ru, this message translates to:
  /// **'Заказать в WhatsApp'**
  String get orderWhatsAppButton;

  /// No description provided for @orderTelegramMessage.
  ///
  /// In ru, this message translates to:
  /// **'Здравствуйте! Хочу заказать: {productTitle} (цена: {price} ₽{sizeText}). Подскажите наличие и доставку СДЭК?'**
  String orderTelegramMessage(String productTitle, int price, String sizeText);

  /// No description provided for @orderWhatsAppMessage.
  ///
  /// In ru, this message translates to:
  /// **'Здравствуйте! Хочу заказать: {productTitle} (цена: {price} ₽{sizeText}). Подскажите наличие и доставку?'**
  String orderWhatsAppMessage(String productTitle, int price, String sizeText);

  /// No description provided for @sizeTextFormat.
  ///
  /// In ru, this message translates to:
  /// **', размер: {size}'**
  String sizeTextFormat(int size);

  /// No description provided for @actionMessage.
  ///
  /// In ru, this message translates to:
  /// **'{key, select, order_telegram_success{Заказ сформирован, переход в Telegram...} order_telegram_failed{Не удалось открыть Telegram} order_whatsapp_success{Заказ сформирован, переход в WhatsApp...} order_whatsapp_failed{Не удалось открыть WhatsApp} other{Операция выполнена}}'**
  String actionMessage(String key);
}

class _OrderActionLocalizationsDelegate
    extends LocalizationsDelegate<OrderActionLocalizations> {
  const _OrderActionLocalizationsDelegate();

  @override
  Future<OrderActionLocalizations> load(Locale locale) {
    return SynchronousFuture<OrderActionLocalizations>(
      lookupOrderActionLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_OrderActionLocalizationsDelegate old) => false;
}

OrderActionLocalizations lookupOrderActionLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return OrderActionLocalizationsEn();
    case 'ru':
      return OrderActionLocalizationsRu();
  }

  throw FlutterError(
    'OrderActionLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
