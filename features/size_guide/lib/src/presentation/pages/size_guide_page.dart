import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:size_guide/src/domain/repositories/size_guide_repository.dart';
import 'package:size_guide/src/presentation/cubit/size_guide_cubit.dart';
import 'package:size_guide/src/presentation/navigation/size_guide_navigator.dart';
import 'package:size_guide/src/presentation/views/size_guide_view.dart';

/// Экран фичи SizeGuide
/// Отвечает ТОЛЬКО за провайдинг зависимостей и Cubit
@RoutePage(name: 'SizeGuideRoute')
class SizeGuidePage extends StatelessWidget {
  const SizeGuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SizeGuideCubit(
        repository: GetIt.I<SizeGuideRepository>(),
        navigator: GetIt.I.isRegistered<SizeGuideNavigator>()
            ? GetIt.I<SizeGuideNavigator>()
            : null,
      ),
      child: const SizeGuideView(),
    );
  }
}
