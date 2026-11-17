import 'package:domain_shared/domain_shared.dart';
import 'package:showcase/src/presentation/l10n/showcase_localizations.dart';

extension ValenkiCategoryX on ValenkiCategory {
  String localizedName(ShowcaseLocalizations? l10n) => switch (this) {
    ValenkiCategory.all => l10n?.categoryAll ?? '',
    ValenkiCategory.men => l10n?.categoryMen ?? '',
    ValenkiCategory.women => l10n?.categoryWomen ?? '',
    ValenkiCategory.kids => l10n?.categoryKids ?? '',
    ValenkiCategory.slippers => l10n?.categorySlippers ?? '',
  };
}

extension SoleTypeX on SoleType {
  String localizedName(ShowcaseLocalizations? l10n) => switch (this) {
    SoleType.tep => l10n?.soleTypeTep ?? '',
    SoleType.felt => l10n?.soleTypeFelt ?? '',
  };
}
