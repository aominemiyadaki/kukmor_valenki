import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_action/order_action.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 768;

    return Container(
      color: const Color(0xFF1E1F22), // Глубокий войлочный цвет
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: isMobile ? 36 : 48,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: isMobile ? 1 : 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: const Color(0xFFC25E34),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              alignment: Alignment.center,
                              child: const Icon(Icons.snowshoeing_rounded, color: Colors.white, size: 18),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'КУКМОРСКИЕ ВАЛЕНКИ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Настоящие валенки из Республики Татарстан. Традиции экологичного войлочного производства с 1867 года.',
                          style: TextStyle(color: Color(0xFF9EA1A8), fontSize: 13, height: 1.4),
                        ),
                        const SizedBox(height: 16),
                        // 152-ФЗ плашка
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          decoration: BoxDecoration(
                            color: const Color(0xFF282A2E),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xFF383A40)),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.lock_outline_rounded, color: Color(0xFF88D49E), size: 16),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  'Приватность без 152-ФЗ: мы не храним персональные данные на сайте. Заказ и консультация оформляются напрямую в мессенджере.',
                                  style: TextStyle(color: Color(0xFFB5B8BF), fontSize: 11),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  if (!isMobile) const SizedBox(width: 48),

                  if (!isMobile)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Доставка и оплата',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            '• СДЭК до пункта или двери\n• Почта России по всей РФ\n• Примерка перед получением\n• Оплата при получении или перевод',
                            style: TextStyle(color: Color(0xFF9EA1A8), fontSize: 13, height: 1.6),
                          ),
                        ],
                      ),
                    ),

                  if (!isMobile) const SizedBox(width: 32),

                  if (!isMobile)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Связь с мастером',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14),
                          ),
                          const SizedBox(height: 12),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              foregroundColor: const Color(0xFF2AABEE),
                              padding: EdgeInsets.zero,
                              alignment: Alignment.centerLeft,
                            ),
                            onPressed: () {
                              context.read<OrderActionCubit>().callPhone();
                            },
                            icon: const Icon(Icons.send_rounded, size: 14),
                            label: const Text('Telegram: @kukmor_manager'),
                          ),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              foregroundColor: const Color(0xFF25D366),
                              padding: EdgeInsets.zero,
                              alignment: Alignment.centerLeft,
                            ),
                            onPressed: () {
                              context.read<OrderActionCubit>().callPhone();
                            },
                            icon: const Icon(Icons.chat_bubble_outline_rounded, size: 14),
                            label: const Text('WhatsApp: +7 987 290-00-00'),
                          ),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.zero,
                              alignment: Alignment.centerLeft,
                            ),
                            onPressed: () {
                              context.read<OrderActionCubit>().callPhone();
                            },
                            icon: const Icon(Icons.phone_outlined, size: 14),
                            label: const Text('+7 (800) 555-35-35'),
                          ),
                        ],
                      ),
                    ),
                ],
              ),

              const SizedBox(height: 32),
              const Divider(color: Color(0xFF2E3035), height: 1),
              const SizedBox(height: 16),

              const Text(
                '© 2026 Магазин «Кукморские валенки». г. Кукмор, Республика Татарстан. Все права защищены.',
                style: TextStyle(color: Color(0xFF6B6E76), fontSize: 11),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
