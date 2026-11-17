import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:order_action/src/domain/repositories/order_action_repository.dart';
import 'package:order_action/src/presentation/cubit/order_action_cubit.dart';
import 'package:order_action/src/presentation/navigation/order_action_navigator.dart';
import 'package:order_action/src/presentation/views/order_action_view.dart';

/// Экран фичи OrderAction
/// Отвечает ТОЛЬКО за провайдинг зависимостей и Cubit
@RoutePage(name: 'OrderActionRoute')
class OrderActionPage extends StatelessWidget {
  const OrderActionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderActionCubit(
        repository: GetIt.I<OrderActionRepository>(),
        navigator: GetIt.I.isRegistered<OrderActionNavigator>()
            ? GetIt.I<OrderActionNavigator>()
            : null,
      ),
      child: const OrderActionView(),
    );
  }
}
