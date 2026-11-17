import 'package:bloc_extensions/bloc_extensions.dart';
import 'package:flutter/material.dart' as m;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_action/src/presentation/cubit/order_action_cubit.dart';
import 'package:order_action/src/presentation/l10n/order_action_localizations.dart';
import 'package:ui_kit/ui_kit.dart';

/// UI-представление фичи OrderAction с обработкой UiEventMixin
class OrderActionView extends m.StatefulWidget {
  const OrderActionView({super.key});

  @override
  m.State<OrderActionView> createState() => _OrderActionViewState();
}

class _OrderActionViewState extends m.State<OrderActionView>
    with UiEventMixin<OrderActionView, OrderActionCubit> {
  @override
  String? onResolveUiKey(String uiKey) {
    final l10n = OrderActionLocalizations.of(context);
    return l10n?.actionMessage(uiKey);
  }

  @override
  m.Widget build(m.BuildContext context) {
    final l10n = OrderActionLocalizations.of(context);

    return Scaffold(
      headers: [
        AppBar(
          title: m.Text(l10n?.orderActionTitle ?? ''),
        ),
      ],
      child: BlocBuilder<OrderActionCubit, OrderActionState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const m.Center(child: m.CircularProgressIndicator());
          }
          if (state.isFailure) {
            return m.Center(
              child: m.Text(
                l10n?.errorDefault ?? '',
                style: const m.TextStyle(color: m.Color(0xFFEF4444)),
              ),
            );
          }
          return m.Center(
            child: m.Text(l10n?.orderActionSubtitle ?? ''),
          );
        },
      ),
    );
  }
}
