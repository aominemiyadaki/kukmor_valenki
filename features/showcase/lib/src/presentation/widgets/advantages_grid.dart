import 'package:flutter/material.dart';

class AdvantagesGrid extends StatelessWidget {
  const AdvantagesGrid({super.key});

  @override
  Widget build(BuildContext context) {
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
              const Text(
                'ПОЧЕМУ КУКМОРСКИЕ ВАЛЕНКИ ВЫБИРАЮТ ПО ВСЕЙ РОССИИ',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.2,
                  color: Color(0xFFC25E34),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Секрет тепла и долговечности',
                style: TextStyle(
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
                    children: const [
                      _AdvantageCard(
                        icon: Icons.grass_rounded,
                        title: '100% Овечья шерсть',
                        text: 'Чистый мытый войлок без синтетических примесей и токсичных клеев. Нога дышит и не потеет.',
                      ),
                      _AdvantageCard(
                        icon: Icons.ac_unit_rounded,
                        title: 'Морозостойкость до -40°C',
                        text: 'Воздушные микропоры шерсти удерживают тепло даже в лютый буран и на неподвижной зимней рыбалке.',
                      ),
                      _AdvantageCard(
                        icon: Icons.waves_rounded,
                        title: 'Литая ТЭП-подошва',
                        text: 'Термоэластопласт не дубеет на морозе, не скользит по наледи и надежно защищает войлок от реагентов и соли.',
                      ),
                      _AdvantageCard(
                        icon: Icons.favorite_border_rounded,
                        title: 'Лечебный сухой прогрев',
                        text: 'Натуральный ланолин в волокнах шерсти снимает суставные боли, усталость и улучшает кровообращение стоп.',
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
        color: const Color(0xFFFBFBF9),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFEBE8E1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFEFECE4),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: const Color(0xFF2C2D30), size: 20),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Color(0xFF222427),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              height: 1.4,
              color: Color(0xFF6B6E76),
            ),
          ),
        ],
      ),
    );
  }
}
