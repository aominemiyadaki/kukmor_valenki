import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:order_action/order_action.dart';
import 'package:showcase/src/domain/repositories/showcase_repository.dart';
import 'package:showcase/src/presentation/cubit/showcase_cubit.dart';
import 'package:showcase/src/presentation/navigation/showcase_navigator.dart';
import 'package:showcase/src/presentation/views/showcase_view.dart';
import 'package:size_guide/size_guide.dart';

/// Главный экран интернет-магазина Кукморских валенок
/// Отвечает за провайдинг Cubit и соблюдение Clean Architecture
@RoutePage(name: 'ShowcaseRoute')
class ShowcasePage extends StatelessWidget {
  const ShowcasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ShowcaseCubit(
            repository: GetIt.I<ShowcaseRepository>(),
            navigator: GetIt.I.isRegistered<ShowcaseNavigator>()
                ? GetIt.I<ShowcaseNavigator>()
                : null,
          ),
        ),
        BlocProvider(
          create: (context) => SizeGuideCubit(
            repository: GetIt.I<SizeGuideRepository>(),
            navigator: GetIt.I.isRegistered<SizeGuideNavigator>()
                ? GetIt.I<SizeGuideNavigator>()
                : null,
          ),
        ),
        BlocProvider(
          create: (context) => OrderActionCubit(
            repository: GetIt.I<OrderActionRepository>(),
            navigator: GetIt.I.isRegistered<OrderActionNavigator>()
                ? GetIt.I<OrderActionNavigator>()
                : null,
          ),
        ),
      ],
      child: const ShowcaseView(),
    );
  }
}
