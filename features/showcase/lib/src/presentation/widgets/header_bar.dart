import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_action/order_action.dart';
import 'package:showcase/src/presentation/l10n/showcase_localizations.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = ShowcaseLocalizations.of(context);
    final isMobile = MediaQuery.sizeOf(context).width < 768;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Color(0xFFEBE8E1)),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Бренд
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFF2C2D30),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: const Icon(Icons.snowshoeing_rounded, color: Color(0xFFF7F5F0), size: 22),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        l10n?.brandTitle ?? '',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                          color: const Color(0xFF1F2023),
                        ),
                      ),
                      Text(
                        l10n?.brandTagline ?? '',
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF75787F),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Кнопки быстрой связи
              Row(
                children: [
                  if (!isMobile)
                    TextButton.icon(
                      onPressed: () {
                        context.read<OrderActionCubit>().callPhone();
                      },
                      icon: const Icon(Icons.phone_outlined, size: 16, color: Color(0xFF2C2D30)),
                      label: const Text(
                        '+7 (800) 555-35-35',
                        style: TextStyle(
                          color: Color(0xFF2C2D30),
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  if (!isMobile) const SizedBox(width: 12),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2AABEE),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {
                      context.read<OrderActionCubit>().callPhone();
                    },
                    icon: const Icon(Icons.send_rounded, size: 14),
                    label: Text(l10n?.askQuestionButton ?? ''),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
