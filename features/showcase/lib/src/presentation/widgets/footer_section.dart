import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_action/order_action.dart';
import 'package:showcase/src/presentation/l10n/showcase_localizations.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = ShowcaseLocalizations.of(context);
    final isMobile = MediaQuery.sizeOf(context).width < 768;

    return Container(
      color: const Color(0xFF1E1F22),
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
                            Text(
                              l10n?.brandTitle ?? '',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          l10n?.footerFactoryDesc ?? '',
                          style: const TextStyle(color: Color(0xFF9EA1A8), fontSize: 13, height: 1.4),
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
                          child: Row(
                            children: [
                              const Icon(Icons.lock_outline_rounded, color: Color(0xFF88D49E), size: 16),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  l10n?.privacy152Notice ?? '',
                                  style: const TextStyle(color: Color(0xFFB5B8BF), fontSize: 11),
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
                          Text(
                            l10n?.footerDeliveryTitle ?? '',
                            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            l10n?.footerDeliveryText ?? '',
                            style: const TextStyle(color: Color(0xFF9EA1A8), fontSize: 13, height: 1.6),
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
                          Text(
                            l10n?.footerMasterTitle ?? '',
                            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14),
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

              Text(
                l10n?.footerCopyright ?? '',
                style: const TextStyle(color: Color(0xFF6B6E76), fontSize: 11),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
