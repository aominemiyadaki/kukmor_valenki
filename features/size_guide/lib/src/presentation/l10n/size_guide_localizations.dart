import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'size_guide_localizations_en.dart';
import 'size_guide_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of SizeGuideLocalizations
/// returned by `SizeGuideLocalizations.of(context)`.
///
/// Applications need to include `SizeGuideLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/size_guide_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: SizeGuideLocalizations.localizationsDelegates,
///   supportedLocales: SizeGuideLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the SizeGuideLocalizations.supportedLocales
/// property.
abstract class SizeGuideLocalizations {
  SizeGuideLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static SizeGuideLocalizations? of(BuildContext context) {
    return Localizations.of<SizeGuideLocalizations>(
      context,
      SizeGuideLocalizations,
    );
  }

  static const LocalizationsDelegate<SizeGuideLocalizations> delegate =
      _SizeGuideLocalizationsDelegate();

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

  /// No description provided for @sizeGuideTitle.
  ///
  /// In ru, this message translates to:
  /// **'Подбор размера валенок'**
  String get sizeGuideTitle;

  /// No description provided for @sizeGuideSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Интерактивный калькулятор по длине стопы'**
  String get sizeGuideSubtitle;

  /// No description provided for @footLengthLabel.
  ///
  /// In ru, this message translates to:
  /// **'Длина вашей стопы:'**
  String get footLengthLabel;

  /// No description provided for @cmUnit.
  ///
  /// In ru, this message translates to:
  /// **'см'**
  String get cmUnit;

  /// No description provided for @regularShoeSizeLabel.
  ///
  /// In ru, this message translates to:
  /// **'Обычный размер обуви'**
  String get regularShoeSizeLabel;

  /// No description provided for @recommendedValenkiSizeLabel.
  ///
  /// In ru, this message translates to:
  /// **'Рекомендуемый размер валенок'**
  String get recommendedValenkiSizeLabel;

  /// No description provided for @sizeRecommendationNote.
  ///
  /// In ru, this message translates to:
  /// **'Для длины стопы {footLength} см стандартный размер — {regularSize}. Мы рекомендуем {valenkiSize} размер кукморских валенок с комфортным припуском {allowanceMm} мм под шерстяной носок.'**
  String sizeRecommendationNote(
    String footLength,
    int regularSize,
    int valenkiSize,
    int allowanceMm,
  );

  /// No description provided for @measureInstructionTitle.
  ///
  /// In ru, this message translates to:
  /// **'Как правильно измерить стопу:'**
  String get measureInstructionTitle;

  /// No description provided for @measureStep1.
  ///
  /// In ru, this message translates to:
  /// **'1. Встаньте на лист бумаги у стены.'**
  String get measureStep1;

  /// No description provided for @measureStep2.
  ///
  /// In ru, this message translates to:
  /// **'2. Отметьте самую выступающую точку пальцев.'**
  String get measureStep2;

  /// No description provided for @measureStep3.
  ///
  /// In ru, this message translates to:
  /// **'3. Измерьте расстояние линейкой в сантиметрах.'**
  String get measureStep3;

  /// No description provided for @woolComfortTip.
  ///
  /// In ru, this message translates to:
  /// **'Шерсть со временем мягко принимает форму ноги, поэтому важно иметь небольшой запас.'**
  String get woolComfortTip;

  /// No description provided for @actionMessage.
  ///
  /// In ru, this message translates to:
  /// **'{key, select, size_calculation_success{Размер успешно рассчитан} other{Операция выполнена}}'**
  String actionMessage(String key);
}

class _SizeGuideLocalizationsDelegate
    extends LocalizationsDelegate<SizeGuideLocalizations> {
  const _SizeGuideLocalizationsDelegate();

  @override
  Future<SizeGuideLocalizations> load(Locale locale) {
    return SynchronousFuture<SizeGuideLocalizations>(
      lookupSizeGuideLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_SizeGuideLocalizationsDelegate old) => false;
}

SizeGuideLocalizations lookupSizeGuideLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return SizeGuideLocalizationsEn();
    case 'ru':
      return SizeGuideLocalizationsRu();
  }

  throw FlutterError(
    'SizeGuideLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
