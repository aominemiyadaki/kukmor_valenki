import 'package:flutter/material.dart';
import 'package:showcase/src/presentation/l10n/showcase_localizations.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key, required this.onCatalogTap});

  final VoidCallback onCatalogTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = ShowcaseLocalizations.of(context);
    final isMobile = MediaQuery.sizeOf(context).width < 768;

    return Container(
      width: double.infinity,
      color: const Color(0xFFF9F8F5),
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: isMobile ? 32 : 56,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            children: [
              // Значок фабричного происхождения
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFFEFECE4),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFFDDD8CD)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.verified_rounded, size: 14, color: Color(0xFFC25E34)),
                    const SizedBox(width: 6),
                    Text(
                      l10n?.heroBadge ?? '',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4A4B4E),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Главный заголовок
              Text(
                l10n?.heroTitle ?? '',
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: isMobile ? 28 : 42,
                  height: 1.15,
                  letterSpacing: -0.5,
                  color: const Color(0xFF1E1F22),
                ),
              ),
              const SizedBox(height: 16),

              // Подзаголовок
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 680),
                child: Text(
                  l10n?.heroSubtitle ?? '',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: const Color(0xFF5A5C63),
                    height: 1.5,
                    fontSize: isMobile ? 15 : 17,
                  ),
                ),
              ),
              const SizedBox(height: 28),

              // Чипы ключевых гарантий
              Wrap(
                spacing: 12,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: [
                  _BadgeChip(icon: Icons.thermostat_rounded, label: l10n?.heroFeatureFrost ?? ''),
                  _BadgeChip(icon: Icons.eco_rounded, label: l10n?.heroFeatureEco ?? ''),
                  _BadgeChip(icon: Icons.shield_outlined, label: l10n?.soleTypeTep ?? ''),
                  _BadgeChip(icon: Icons.local_shipping_outlined, label: l10n?.heroFeatureDelivery ?? ''),
                ],
              ),
              const SizedBox(height: 32),

              // Основная кнопка перехода к каталогу
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2C2D30),
                  foregroundColor: const Color(0xFFF7F5F0),
                  padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: onCatalogTap,
                icon: const Icon(Icons.arrow_downward_rounded, size: 18),
                label: Text(
                  l10n?.heroSelectModelBtn ?? '',
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BadgeChip extends StatelessWidget {
  const _BadgeChip({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE5E2D9)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 15, color: const Color(0xFFC25E34)),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF2C2D30),
            ),
          ),
        ],
      ),
    );
  }
}
