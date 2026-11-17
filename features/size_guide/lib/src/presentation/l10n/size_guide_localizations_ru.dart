// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'size_guide_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class SizeGuideLocalizationsRu extends SizeGuideLocalizations {
  SizeGuideLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get sizeGuideTitle => 'Подбор размера валенок';

  @override
  String get sizeGuideSubtitle => 'Интерактивный калькулятор по длине стопы';

  @override
  String get footLengthLabel => 'Длина вашей стопы:';

  @override
  String get cmUnit => 'см';

  @override
  String get regularShoeSizeLabel => 'Обычный размер обуви';

  @override
  String get recommendedValenkiSizeLabel => 'Рекомендуемый размер валенок';

  @override
  String sizeRecommendationNote(
    String footLength,
    int regularSize,
    int valenkiSize,
    int allowanceMm,
  ) {
    return 'Для длины стопы $footLength см стандартный размер — $regularSize. Мы рекомендуем $valenkiSize размер кукморских валенок с комфортным припуском $allowanceMm мм под шерстяной носок.';
  }

  @override
  String get measureInstructionTitle => 'Как правильно измерить стопу:';

  @override
  String get measureStep1 => '1. Встаньте на лист бумаги у стены.';

  @override
  String get measureStep2 => '2. Отметьте самую выступающую точку пальцев.';

  @override
  String get measureStep3 => '3. Измерьте расстояние линейкой в сантиметрах.';

  @override
  String get woolComfortTip =>
      'Шерсть со временем мягко принимает форму ноги, поэтому важно иметь небольшой запас.';

  @override
  String actionMessage(String key) {
    String _temp0 = intl.Intl.selectLogic(key, {
      'size_calculation_success': 'Размер успешно рассчитан',
      'other': 'Операция выполнена',
    });
    return '$_temp0';
  }
}
