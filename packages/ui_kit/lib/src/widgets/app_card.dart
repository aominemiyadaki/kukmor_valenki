import 'package:shadcn_flutter/shadcn_flutter.dart';

/// Базовая карточка приложения на shadcn_flutter
class AppCard extends StatelessWidget {


  final Widget child;
  final Widget? header;
  final String? title;
  final String? subtitle;
  final Widget? trailing;
  final Widget? footer;
  final EdgeInsetsGeometry? padding;

  const AppCard({
    required this.child,
    this.header,
    this.title,
    this.subtitle,
    this.trailing,
    this.footer,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      padding: padding ?? const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (header != null) ...[
            header!,
            const SizedBox(height: 12),
          ] else if (title != null) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (subtitle != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          subtitle!,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFF888888),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                if (trailing != null) ...[
                  const SizedBox(width: 8),
                  trailing!,
                ],
              ],
            ),
            const SizedBox(height: 12),
          ],
          child,
          if (footer != null) ...[const SizedBox(height: 12), footer!],
        ],
      ),
    );
  }
}
