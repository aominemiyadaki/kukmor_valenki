import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:size_guide/src/presentation/cubit/size_guide_cubit.dart';
import 'package:size_guide/src/presentation/l10n/size_guide_localizations.dart';
import 'package:ui_kit/ui_kit.dart';

/// UI-представление фичи SizeGuide
class SizeGuideView extends StatelessWidget {
  const SizeGuideView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = SizeGuideLocalizations.of(context);

    return Scaffold(
      headers: [
        AppBar(
          title: Text(l10n?.sizeGuideTitle ?? ''),
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
                l10n?.actionMessage('error') ?? '',
                style: const TextStyle(color: Color(0xFFEF4444)),
              ),
            );
          }
          return Center(
            child: Text(l10n?.sizeGuideSubtitle ?? ''),
          );
        },
      ),
    );
  }
}
