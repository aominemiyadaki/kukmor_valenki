import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'showcase_localizations_en.dart';
import 'showcase_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of ShowcaseLocalizations
/// returned by `ShowcaseLocalizations.of(context)`.
///
/// Applications need to include `ShowcaseLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/showcase_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: ShowcaseLocalizations.localizationsDelegates,
///   supportedLocales: ShowcaseLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the ShowcaseLocalizations.supportedLocales
/// property.
abstract class ShowcaseLocalizations {
  ShowcaseLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static ShowcaseLocalizations? of(BuildContext context) {
    return Localizations.of<ShowcaseLocalizations>(
      context,
      ShowcaseLocalizations,
    );
  }

  static const LocalizationsDelegate<ShowcaseLocalizations> delegate =
      _ShowcaseLocalizationsDelegate();

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

  /// No description provided for @brandTitle.
  ///
  /// In ru, this message translates to:
  /// **'КУКМОРСКИЕ ВАЛЕНКИ'**
  String get brandTitle;

  /// No description provided for @brandTagline.
  ///
  /// In ru, this message translates to:
  /// **'100% шерсть • с 1867 года'**
  String get brandTagline;

  /// No description provided for @navCatalog.
  ///
  /// In ru, this message translates to:
  /// **'Каталог'**
  String get navCatalog;

  /// No description provided for @navSizes.
  ///
  /// In ru, this message translates to:
  /// **'Размеры'**
  String get navSizes;

  /// No description provided for @navContacts.
  ///
  /// In ru, this message translates to:
  /// **'Контакты'**
  String get navContacts;

  /// No description provided for @askQuestionButton.
  ///
  /// In ru, this message translates to:
  /// **'Задать вопрос'**
  String get askQuestionButton;

  /// No description provided for @heroBadge.
  ///
  /// In ru, this message translates to:
  /// **'НАСТОЯЩИЙ КУКМОРСКИЙ ВОЙЛОК'**
  String get heroBadge;

  /// No description provided for @heroTitle.
  ///
  /// In ru, this message translates to:
  /// **'Тёплые валенки ручной валки для русской зимы'**
  String get heroTitle;

  /// No description provided for @heroSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Экологически чистая 100% овечья шерсть. Сохраняют сухое тепло до -40°C, защищают ноги от сырости и не скользят.'**
  String get heroSubtitle;

  /// No description provided for @heroSelectModelBtn.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать модель'**
  String get heroSelectModelBtn;

  /// No description provided for @heroSizeGuideBtn.
  ///
  /// In ru, this message translates to:
  /// **'Подобрать размер'**
  String get heroSizeGuideBtn;

  /// No description provided for @heroFeatureEco.
  ///
  /// In ru, this message translates to:
  /// **'100% натуральная шерсть'**
  String get heroFeatureEco;

  /// No description provided for @heroFeatureFrost.
  ///
  /// In ru, this message translates to:
  /// **'Морозостойкость до -40°C'**
  String get heroFeatureFrost;

  /// No description provided for @heroFeatureDelivery.
  ///
  /// In ru, this message translates to:
  /// **'Доставка СДЭК и Почтой по всей РФ'**
  String get heroFeatureDelivery;

  /// No description provided for @advNaturalTitle.
  ///
  /// In ru, this message translates to:
  /// **'100% Овечья шерсть'**
  String get advNaturalTitle;

  /// No description provided for @advNaturalDesc.
  ///
  /// In ru, this message translates to:
  /// **'Мытая шерсть без едкой химии и красителей. Обладает лечебным микромассажным эффектом и снимает усталость с ног.'**
  String get advNaturalDesc;

  /// No description provided for @advFrostTitle.
  ///
  /// In ru, this message translates to:
  /// **'Тепло до -40°C'**
  String get advFrostTitle;

  /// No description provided for @advFrostDesc.
  ///
  /// In ru, this message translates to:
  /// **'Плотный войлок создаёт идеальный микроклимат: нога дышит, не потеет и не мерзнет даже в лютый северный мороз.'**
  String get advFrostDesc;

  /// No description provided for @advSoleTitle.
  ///
  /// In ru, this message translates to:
  /// **'Подошва ТЭП или войлок'**
  String get advSoleTitle;

  /// No description provided for @advSoleDesc.
  ///
  /// In ru, this message translates to:
  /// **'Современная литая подошва ТЭП не трескается на морозе и не скользит, а для дома есть уютные классические варианты.'**
  String get advSoleDesc;

  /// No description provided for @advDeliveryTitle.
  ///
  /// In ru, this message translates to:
  /// **'Быстрая доставка по РФ'**
  String get advDeliveryTitle;

  /// No description provided for @advDeliveryDesc.
  ///
  /// In ru, this message translates to:
  /// **'Отправляем заказы через СДЭК и Почту России с возможностью примерки перед получением.'**
  String get advDeliveryDesc;

  /// No description provided for @catalogEyebrow.
  ///
  /// In ru, this message translates to:
  /// **'КАТАЛОГ ВАЛЕНОК'**
  String get catalogEyebrow;

  /// No description provided for @catalogTitle.
  ///
  /// In ru, this message translates to:
  /// **'Выберите модель для себя и близких'**
  String get catalogTitle;

  /// No description provided for @categoryAll.
  ///
  /// In ru, this message translates to:
  /// **'Все модели'**
  String get categoryAll;

  /// No description provided for @categoryMen.
  ///
  /// In ru, this message translates to:
  /// **'Мужские'**
  String get categoryMen;

  /// No description provided for @categoryWomen.
  ///
  /// In ru, this message translates to:
  /// **'Женские'**
  String get categoryWomen;

  /// No description provided for @categoryKids.
  ///
  /// In ru, this message translates to:
  /// **'Детские'**
  String get categoryKids;

  /// No description provided for @categorySlippers.
  ///
  /// In ru, this message translates to:
  /// **'Чуни и тапочки'**
  String get categorySlippers;

  /// No description provided for @soleTypeTep.
  ///
  /// In ru, this message translates to:
  /// **'ТЭП подошва (не скользит, не мокнет)'**
  String get soleTypeTep;

  /// No description provided for @soleTypeFelt.
  ///
  /// In ru, this message translates to:
  /// **'Классическая войлочная подошва'**
  String get soleTypeFelt;

  /// No description provided for @badgeHit.
  ///
  /// In ru, this message translates to:
  /// **'ХИТ'**
  String get badgeHit;

  /// No description provided for @badgeWool.
  ///
  /// In ru, this message translates to:
  /// **'100% ШЕРСТЬ'**
  String get badgeWool;

  /// No description provided for @availableSizesLabel.
  ///
  /// In ru, this message translates to:
  /// **'Размеры в наличии:'**
  String get availableSizesLabel;

  /// No description provided for @selectSizePrompt.
  ///
  /// In ru, this message translates to:
  /// **'Выберите размер для быстрого заказа:'**
  String get selectSizePrompt;

  /// No description provided for @orderInTelegram.
  ///
  /// In ru, this message translates to:
  /// **'Заказать в Telegram'**
  String get orderInTelegram;

  /// No description provided for @orderInWhatsApp.
  ///
  /// In ru, this message translates to:
  /// **'Заказать в WhatsApp'**
  String get orderInWhatsApp;

  /// No description provided for @emptyCatalogMessage.
  ///
  /// In ru, this message translates to:
  /// **'В выбранной категории сейчас нет моделей в наличии'**
  String get emptyCatalogMessage;

  /// No description provided for @catalogLoadError.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка загрузки каталога'**
  String get catalogLoadError;

  /// No description provided for @priceRub.
  ///
  /// In ru, this message translates to:
  /// **'{price} ₽'**
  String priceRub(int price);

  /// No description provided for @footerFactoryDesc.
  ///
  /// In ru, this message translates to:
  /// **'Настоящие валенки из Республики Татарстан. Традиции экологичного войлочного производства с 1867 года.'**
  String get footerFactoryDesc;

  /// No description provided for @privacy152Notice.
  ///
  /// In ru, this message translates to:
  /// **'Приватность без 152-ФЗ: мы не храним персональные данные на сайте. Заказ и консультация оформляются напрямую в мессенджере.'**
  String get privacy152Notice;

  /// No description provided for @footerDeliveryTitle.
  ///
  /// In ru, this message translates to:
  /// **'Доставка и оплата'**
  String get footerDeliveryTitle;

  /// No description provided for @footerDeliveryText.
  ///
  /// In ru, this message translates to:
  /// **'• СДЭК до пункта или двери\n• Почта России по всей РФ\n• Примерка перед получением\n• Оплата при получении или перевод'**
  String get footerDeliveryText;

  /// No description provided for @footerMasterTitle.
  ///
  /// In ru, this message translates to:
  /// **'Связь с мастером'**
  String get footerMasterTitle;

  /// No description provided for @footerCopyright.
  ///
  /// In ru, this message translates to:
  /// **'© 2026 Магазин «Кукморские валенки». г. Кукмор, Республика Татарстан. Все права защищены.'**
  String get footerCopyright;

  /// No description provided for @actionMessage.
  ///
  /// In ru, this message translates to:
  /// **'{key, select, catalog_load_failed{Не удалось загрузить каталог} empty_catalog{Каталог пуст} other{Операция выполнена}}'**
  String actionMessage(String key);
}

class _ShowcaseLocalizationsDelegate
    extends LocalizationsDelegate<ShowcaseLocalizations> {
  const _ShowcaseLocalizationsDelegate();

  @override
  Future<ShowcaseLocalizations> load(Locale locale) {
    return SynchronousFuture<ShowcaseLocalizations>(
      lookupShowcaseLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_ShowcaseLocalizationsDelegate old) => false;
}

ShowcaseLocalizations lookupShowcaseLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return ShowcaseLocalizationsEn();
    case 'ru':
      return ShowcaseLocalizationsRu();
  }

  throw FlutterError(
    'ShowcaseLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
