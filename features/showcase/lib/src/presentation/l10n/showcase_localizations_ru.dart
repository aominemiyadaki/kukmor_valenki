// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'showcase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class ShowcaseLocalizationsRu extends ShowcaseLocalizations {
  ShowcaseLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get brandTitle => 'КУКМОРСКИЕ ВАЛЕНКИ';

  @override
  String get brandTagline => '100% шерсть • с 1867 года';

  @override
  String get navCatalog => 'Каталог';

  @override
  String get navSizes => 'Размеры';

  @override
  String get navContacts => 'Контакты';

  @override
  String get askQuestionButton => 'Задать вопрос';

  @override
  String get heroBadge => 'НАСТОЯЩИЙ КУКМОРСКИЙ ВОЙЛОК';

  @override
  String get heroTitle => 'Тёплые валенки ручной валки для русской зимы';

  @override
  String get heroSubtitle =>
      'Экологически чистая 100% овечья шерсть. Сохраняют сухое тепло до -40°C, защищают ноги от сырости и не скользят.';

  @override
  String get heroSelectModelBtn => 'Выбрать модель';

  @override
  String get heroSizeGuideBtn => 'Подобрать размер';

  @override
  String get heroFeatureEco => '100% натуральная шерсть';

  @override
  String get heroFeatureFrost => 'Морозостойкость до -40°C';

  @override
  String get heroFeatureDelivery => 'Доставка СДЭК и Почтой по всей РФ';

  @override
  String get advNaturalTitle => '100% Овечья шерсть';

  @override
  String get advNaturalDesc =>
      'Мытая шерсть без едкой химии и красителей. Обладает лечебным микромассажным эффектом и снимает усталость с ног.';

  @override
  String get advFrostTitle => 'Тепло до -40°C';

  @override
  String get advFrostDesc =>
      'Плотный войлок создаёт идеальный микроклимат: нога дышит, не потеет и не мерзнет даже в лютый северный мороз.';

  @override
  String get advSoleTitle => 'Подошва ТЭП или войлок';

  @override
  String get advSoleDesc =>
      'Современная литая подошва ТЭП не трескается на морозе и не скользит, а для дома есть уютные классические варианты.';

  @override
  String get advDeliveryTitle => 'Быстрая доставка по РФ';

  @override
  String get advDeliveryDesc =>
      'Отправляем заказы через СДЭК и Почту России с возможностью примерки перед получением.';

  @override
  String get catalogEyebrow => 'КАТАЛОГ ВАЛЕНОК';

  @override
  String get catalogTitle => 'Выберите модель для себя и близких';

  @override
  String get categoryAll => 'Все модели';

  @override
  String get categoryMen => 'Мужские';

  @override
  String get categoryWomen => 'Женские';

  @override
  String get categoryKids => 'Детские';

  @override
  String get categorySlippers => 'Чуни и тапочки';

  @override
  String get soleTypeTep => 'ТЭП подошва (не скользит, не мокнет)';

  @override
  String get soleTypeFelt => 'Классическая войлочная подошва';

  @override
  String get badgeHit => 'ХИТ';

  @override
  String get badgeWool => '100% ШЕРСТЬ';

  @override
  String get availableSizesLabel => 'Размеры в наличии:';

  @override
  String get selectSizePrompt => 'Выберите размер для быстрого заказа:';

  @override
  String get orderInTelegram => 'Заказать в Telegram';

  @override
  String get orderInWhatsApp => 'Заказать в WhatsApp';

  @override
  String get emptyCatalogMessage =>
      'В выбранной категории сейчас нет моделей в наличии';

  @override
  String get catalogLoadError => 'Ошибка загрузки каталога';

  @override
  String priceRub(int price) {
    return '$price ₽';
  }

  @override
  String get footerFactoryDesc =>
      'Настоящие валенки из Республики Татарстан. Традиции экологичного войлочного производства с 1867 года.';

  @override
  String get privacy152Notice =>
      'Приватность без 152-ФЗ: мы не храним персональные данные на сайте. Заказ и консультация оформляются напрямую в мессенджере.';

  @override
  String get footerDeliveryTitle => 'Доставка и оплата';

  @override
  String get footerDeliveryText =>
      '• СДЭК до пункта или двери\n• Почта России по всей РФ\n• Примерка перед получением\n• Оплата при получении или перевод';

  @override
  String get footerMasterTitle => 'Связь с мастером';

  @override
  String get footerCopyright =>
      '© 2026 Магазин «Кукморские валенки». г. Кукмор, Республика Татарстан. Все права защищены.';

  @override
  String actionMessage(String key) {
    String _temp0 = intl.Intl.selectLogic(key, {
      'catalog_load_failed': 'Не удалось загрузить каталог',
      'empty_catalog': 'Каталог пуст',
      'other': 'Операция выполнена',
    });
    return '$_temp0';
  }
}
