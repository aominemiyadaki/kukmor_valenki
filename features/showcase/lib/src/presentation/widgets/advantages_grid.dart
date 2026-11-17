import 'package:flutter/material.dart';
import 'package:showcase/src/presentation/l10n/showcase_localizations.dart';

class AdvantagesGrid extends StatelessWidget {
  const AdvantagesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = ShowcaseLocalizations.of(context);
    final isMobile = MediaQuery.sizeOf(context).width < 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: isMobile ? 32 : 48,
      ),
      color: Colors.white,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n?.heroBadge ?? '',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.2,
                  color: Color(0xFFC25E34),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                l10n?.heroTitle ?? '',
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1E1F22),
                ),
              ),
              const SizedBox(height: 28),

              LayoutBuilder(
                builder: (context, constraints) {
                  final crossAxisCount = constraints.maxWidth < 600 ? 1 : (constraints.maxWidth < 980 ? 2 : 4);
                  return GridView.count(
                    crossAxisCount: crossAxisCount,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: crossAxisCount == 1 ? 2.8 : 1.35,
                    children: [
                      _AdvantageCard(
                        icon: Icons.grass_rounded,
                        title: l10n?.advNaturalTitle ?? '',
                        text: l10n?.advNaturalDesc ?? '',
                      ),
                      _AdvantageCard(
                        icon: Icons.ac_unit_rounded,
                        title: l10n?.advFrostTitle ?? '',
                        text: l10n?.advFrostDesc ?? '',
                      ),
                      _AdvantageCard(
                        icon: Icons.waves_rounded,
                        title: l10n?.advSoleTitle ?? '',
                        text: l10n?.advSoleDesc ?? '',
                      ),
                      _AdvantageCard(
                        icon: Icons.local_shipping_outlined,
                        title: l10n?.advDeliveryTitle ?? '',
                        text: l10n?.advDeliveryDesc ?? '',
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AdvantageCard extends StatelessWidget {
  const _AdvantageCard({
    required this.icon,
    required this.title,
    required this.text,
  });

  final IconData icon;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFAF9F6),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFEDE9DF)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFEBE6D8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 22, color: const Color(0xFF2C2D30)),
          ),
          const SizedBox(height: 14),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1E1F22),
            ),
          ),
          const SizedBox(height: 6),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF6B6E76),
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
