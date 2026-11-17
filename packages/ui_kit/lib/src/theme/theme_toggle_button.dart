import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:ui_kit/src/theme/theme_cubit.dart';

/// Кнопка переключения темы оформления со сменой иконок и лейбла
class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({
    this.lightLabel,
    this.darkLabel,
    this.tooltip,
    this.showLabel = false,
    super.key,
  });

  final String? lightLabel;
  final String? darkLabel;
  final String? tooltip;
  final bool showLabel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, themeMode) {
        final isDark = context.read<ThemeCubit>().isDark(context);
        final label = isDark ? (lightLabel ?? '') : (darkLabel ?? '');
        final icon = isDark ? LucideIcons.sun : LucideIcons.moon;

        return OutlineButton(
          onPressed: () => context.read<ThemeCubit>().toggleTheme(context),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 16),
              if (showLabel && label.isNotEmpty) ...[const SizedBox(width: 6), Text(label)],
            ],
          ),
        );
      },
    );
  }
}
