// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'showcase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class ShowcaseLocalizationsEn extends ShowcaseLocalizations {
  ShowcaseLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get brandTitle => 'KUKMOR VALENKI';

  @override
  String get brandTagline => '100% natural wool • since 1867';

  @override
  String get navCatalog => 'Catalog';

  @override
  String get navSizes => 'Sizes';

  @override
  String get navContacts => 'Contacts';

  @override
  String get askQuestionButton => 'Ask a question';

  @override
  String get heroBadge => 'GENUINE KUKMOR FELT';

  @override
  String get heroTitle => 'Warm handcrafted felt boots for real winter';

  @override
  String get heroSubtitle =>
      '100% eco-friendly natural sheep wool. Dry warmth down to -40°C, anti-slip soles and natural comfort.';

  @override
  String get heroSelectModelBtn => 'Choose Model';

  @override
  String get heroSizeGuideBtn => 'Find Size';

  @override
  String get heroFeatureEco => '100% natural wool';

  @override
  String get heroFeatureFrost => 'Frost resistant down to -40°C';

  @override
  String get heroFeatureDelivery => 'Fast shipping with fitting available';

  @override
  String get advNaturalTitle => '100% Sheep Wool';

  @override
  String get advNaturalDesc =>
      'Washed wool without harsh chemicals. Promotes micro-circulation and relieves foot fatigue.';

  @override
  String get advFrostTitle => 'Warm to -40°C';

  @override
  String get advFrostDesc =>
      'Dense felt creates an optimal microclimate: feet breathe, do not sweat, and stay warm in freezing cold.';

  @override
  String get advSoleTitle => 'TRP Sole or Pure Felt';

  @override
  String get advSoleDesc =>
      'Modern anti-slip TRP sole resists road salts and ice, while classic pure felt is perfect for dry snow and home.';

  @override
  String get advDeliveryTitle => 'Fast Delivery';

  @override
  String get advDeliveryDesc =>
      'Dispatched via courier and postal service with fitting before payment.';

  @override
  String get catalogEyebrow => 'VALENKI CATALOG';

  @override
  String get catalogTitle => 'Choose a pair for you and your family';

  @override
  String get categoryAll => 'All Models';

  @override
  String get categoryMen => 'Men\'s';

  @override
  String get categoryWomen => 'Women\'s';

  @override
  String get categoryKids => 'Kids';

  @override
  String get categorySlippers => 'Slippers & Chuni';

  @override
  String get soleTypeTep => 'TRP sole (anti-slip, waterproof)';

  @override
  String get soleTypeFelt => 'Classic pure felt sole';

  @override
  String get badgeHit => 'BESTSELLER';

  @override
  String get badgeWool => '100% WOOL';

  @override
  String get availableSizesLabel => 'Available sizes:';

  @override
  String get selectSizePrompt => 'Select size for 1-click ordering:';

  @override
  String get orderInTelegram => 'Order via Telegram';

  @override
  String get orderInWhatsApp => 'Order via WhatsApp';

  @override
  String get emptyCatalogMessage =>
      'No items currently available in this category';

  @override
  String get catalogLoadError => 'Failed to load catalog';

  @override
  String priceRub(int price) {
    return '$price RUB';
  }

  @override
  String get footerFactoryDesc =>
      'Authentic felt boots from Tatarstan. Traditions of eco-friendly woolcraft since 1867.';

  @override
  String get privacy152Notice =>
      'Privacy-first: no personal data stored on this site. Orders are placed directly via messenger.';

  @override
  String get footerDeliveryTitle => 'Shipping & Payment';

  @override
  String get footerDeliveryText =>
      '• Courier door delivery\n• Fitting before payment\n• Cash or card on delivery';

  @override
  String get footerMasterTitle => 'Contact Master';

  @override
  String get footerCopyright =>
      '© 2026 Kukmor Valenki. Kukmor, Tatarstan. All rights reserved.';

  @override
  String actionMessage(String key) {
    String _temp0 = intl.Intl.selectLogic(key, {
      'catalog_load_failed': 'Failed to load catalog',
      'empty_catalog': 'Catalog is empty',
      'other': 'Operation completed',
    });
    return '$_temp0';
  }
}
