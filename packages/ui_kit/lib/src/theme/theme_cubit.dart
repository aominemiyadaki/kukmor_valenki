import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

/// Cubit управления глобальной темой приложения (Светлая / Темная / Системная)
/// Не регистрируется в GetIt, привязан к жизненному циклу виджетов через BlocProvider
class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit({ThemeMode initialMode = ThemeMode.dark}) : super(initialMode);

  /// Переключение между светлой и темной темой
  void toggleTheme([BuildContext? context]) {
    if (state == ThemeMode.system) {
      final isPlatformDark = context != null
          ? MediaQuery.maybePlatformBrightnessOf(context) == Brightness.dark
          : true;
      emit(isPlatformDark ? ThemeMode.light : ThemeMode.dark);
    } else if (state == ThemeMode.dark) {
      emit(ThemeMode.light);
    } else {
      emit(ThemeMode.dark);
    }
  }

  /// Явная установка режима темы
  void setThemeMode(ThemeMode mode) {
    emit(mode);
  }

  /// Проверка, активна ли темная тема
  bool isDark(BuildContext context) {
    if (state == ThemeMode.system) {
      return MediaQuery.maybePlatformBrightnessOf(context) == Brightness.dark;
    }
    return state == ThemeMode.dark;
  }
}
