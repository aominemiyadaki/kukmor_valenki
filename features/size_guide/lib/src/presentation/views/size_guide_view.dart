import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:size_guide/src/presentation/cubit/size_guide_cubit.dart';
import 'package:ui_kit/ui_kit.dart';

/// UI-представление фичи SizeGuide
class SizeGuideView extends StatelessWidget {
  const SizeGuideView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: const [
        AppBar(
          title: Text('Таблица размеров'),
        ),
      ],
      child: BlocBuilder<SizeGuideCubit, SizeGuideState>(
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
            child: Text('Таблица подбора размеров'),
          );
        },
      ),
    );
  }
}
