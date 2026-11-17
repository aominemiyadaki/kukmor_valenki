import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_action/src/presentation/cubit/order_action_cubit.dart';
import 'package:ui_kit/ui_kit.dart';

/// UI-представление фичи OrderAction
class OrderActionView extends StatelessWidget {
  const OrderActionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: const [
        AppBar(
          title: Text('Быстрый заказ'),
        ),
      ],
      child: BlocBuilder<OrderActionCubit, OrderActionState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.isFailure) {
            return Center(
              child: Text(
                state.errorMessage ?? 'Произошла ошибка',
                style: const TextStyle(color: Color(0xFFEF4444)),
              ),
            );
          }
          return const Center(
            child: Text('Заказ через Telegram или WhatsApp'),
          );
        },
      ),
    );
  }
}
