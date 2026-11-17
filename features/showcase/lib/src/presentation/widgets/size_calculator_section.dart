import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:size_guide/size_guide.dart';

class SizeCalculatorSection extends StatelessWidget {
  const SizeCalculatorSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isMobile = MediaQuery.sizeOf(context).width < 768;

    return Container(
      color: const Color(0xFFF6F4EE), // Светлый войлочный фон
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: isMobile ? 36 : 56,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: const Color(0xFFDDD8CD)),
                ),
                child: const Text(
                  'КАЛЬКУЛЯТОР КУКМОРСКОГО РАЗМЕРА',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.1,
                    color: Color(0xFFC25E34),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Как не ошибиться с размером валенок?',
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: isMobile ? 22 : 28,
                  color: const Color(0xFF1E1F22),
                ),
              ),
              const SizedBox(height: 12),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 620),
                child: const Text(
                  'Натуральный овечий войлок садится точно по ноге за 2–3 дня носки. '
                  'Укажите точную длину стопы в сантиметрах, и мы рассчитаем идеальный размер с запасом под шерстяной носок.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Color(0xFF6B6E76), height: 1.45),
                ),
              ),
              const SizedBox(height: 32),

              // Карточка интерактивного подбора
              BlocBuilder<SizeGuideCubit, SizeGuideState>(
                builder: (context, state) {
                  final footLength = state.currentFootLength;
                  final recommendation = state.recommendation;

                  return Container(
                    padding: EdgeInsets.all(isMobile ? 20 : 32),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: const Color(0xFFE4E1D8)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Длина вашей стопы:',
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xFF2C2D30)),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                              decoration: BoxDecoration(
                                color: const Color(0xFF2C2D30),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                '${footLength.toStringAsFixed(1)} см',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),

                        // Слайдер выбора длины
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: const Color(0xFFC25E34),
                            inactiveTrackColor: const Color(0xFFE8E5DD),
                            thumbColor: const Color(0xFFC25E34),
                            overlayColor: const Color(0xFFC25E34).withValues(alpha: 0.15),
                            trackHeight: 6,
                          ),
                          child: Slider(
                            value: footLength,
                            min: 22,
                            max: 30.5,
                            divisions: 17,
                            onChanged: (val) {
                              context.read<SizeGuideCubit>().updateFootLength(val);
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('22.0 см (р. 35)', style: TextStyle(fontSize: 11, color: Color(0xFF8C8F96))),
                              Text('26.5 см (р. 41)', style: TextStyle(fontSize: 11, color: Color(0xFF8C8F96))),
                              Text('30.5 см (р. 47)', style: TextStyle(fontSize: 11, color: Color(0xFF8C8F96))),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Блок рекомендации
                        if (recommendation != null)
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF9F7F2),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: const Color(0xFFE6E2D6)),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFC25E34),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    '${recommendation.valenkiSize}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Рекомендуемый размер валенок: ${recommendation.valenkiSize}',
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF1E1F22),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        recommendation.note,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF6B6E76),
                                          height: 1.35,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
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
