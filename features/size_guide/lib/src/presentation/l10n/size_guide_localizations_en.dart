// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'size_guide_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SizeGuideLocalizationsEn extends SizeGuideLocalizations {
  SizeGuideLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get sizeGuideTitle => 'Valenki Size Finder';

  @override
  String get sizeGuideSubtitle => 'Interactive foot length size calculator';

  @override
  String get footLengthLabel => 'Your foot length:';

  @override
  String get cmUnit => 'cm';

  @override
  String get regularShoeSizeLabel => 'Standard shoe size';

  @override
  String get recommendedValenkiSizeLabel => 'Recommended valenki size';

  @override
  String sizeRecommendationNote(
    String footLength,
    int regularSize,
    int valenkiSize,
    int allowanceMm,
  ) {
    return 'For foot length $footLength cm, standard size is $regularSize. We recommend size $valenkiSize Kukmor valenki with a comfortable $allowanceMm mm allowance for warm wool socks.';
  }

  @override
  String get measureInstructionTitle => 'How to properly measure your foot:';

  @override
  String get measureStep1 => '1. Stand on a sheet of paper against a wall.';

  @override
  String get measureStep2 => '2. Mark the tip of your longest toe.';

  @override
  String get measureStep3 =>
      '3. Measure the distance with a ruler in centimeters.';

  @override
  String get woolComfortTip =>
      'Natural wool adapts to your foot shape over time, so a small allowance is important.';

  @override
  String actionMessage(String key) {
    String _temp0 = intl.Intl.selectLogic(key, {
      'size_calculation_success': 'Size calculated successfully',
      'other': 'Operation completed',
    });
    return '$_temp0';
  }
}
