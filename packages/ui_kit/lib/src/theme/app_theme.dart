import 'package:flutter/material.dart' as m;
import 'package:shadcn_flutter/shadcn_flutter.dart';

/// Конфигурация темы приложения на базе shadcn_flutter
abstract final class AppTheme {
  /// Типографика на базе SpaceGrotesk
  static Typography get typography => Typography.geist().copyWith(
    sans: () => const TextStyle(
      fontFamily: 'SpaceGrotesk',
      fontFamilyFallback: ['Roboto', '-apple-system', 'sans-serif'],
    ),
  );

  /// Светлая тема с приятной современной палитрой
  static ThemeData get lightTheme => ThemeData(
    colorScheme: LegacyColorSchemes.lightOrange(),
    radius: 0.75,
    typography: typography,
  );

  /// Темная тема
  static ThemeData get darkTheme => ThemeData(
    colorScheme: LegacyColorSchemes.darkOrange(),
    radius: 0.75,
    typography: typography,
  );

  /// Преобразование темы shadcn в согласованную Material ThemeData
  /// для безупречного отображения Material-виджетов (TextField, showDatePicker, bottom sheets и диалогов)
  static m.ThemeData toMaterialTheme(ThemeData theme) {
    final isDark = theme.colorScheme.brightness == Brightness.dark;
    final colorScheme = isDark
        ? m.ColorScheme.dark(
            primary: theme.colorScheme.primary,
            onPrimary: theme.colorScheme.primaryForeground,
            surface: theme.colorScheme.card,
            onSurface: theme.colorScheme.foreground,
            error: theme.colorScheme.destructive,
            onError: const Color(0xFFFFFFFF),
            outline: theme.colorScheme.border,
          )
        : m.ColorScheme.light(
            primary: theme.colorScheme.primary,
            onPrimary: theme.colorScheme.primaryForeground,
            surface: theme.colorScheme.card,
            onSurface: theme.colorScheme.foreground,
            error: theme.colorScheme.destructive,
            outline: theme.colorScheme.border,
          );

    return m.ThemeData(
      useMaterial3: true,
      brightness: theme.colorScheme.brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: theme.colorScheme.background,
      canvasColor: theme.colorScheme.background,
      cardColor: theme.colorScheme.card,
      fontFamily: 'SpaceGrotesk',
      fontFamilyFallback: const ['Roboto', '-apple-system', 'sans-serif'],
      textTheme: m.TextTheme(
        bodyLarge: TextStyle(color: theme.colorScheme.foreground),
        bodyMedium: TextStyle(color: theme.colorScheme.foreground),
        bodySmall: TextStyle(color: theme.colorScheme.mutedForeground),
        titleLarge: TextStyle(
          color: theme.colorScheme.foreground,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          color: theme.colorScheme.foreground,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(color: theme.colorScheme.foreground),
        labelLarge: TextStyle(color: theme.colorScheme.foreground),
        labelMedium: TextStyle(color: theme.colorScheme.mutedForeground),
        labelSmall: TextStyle(color: theme.colorScheme.mutedForeground),
      ),
      inputDecorationTheme: m.InputDecorationTheme(
        filled: true,
        fillColor: isDark
            ? theme.colorScheme.muted.withValues(alpha: 0.3)
            : theme.colorScheme.muted.withValues(alpha: 0.1),
        labelStyle: TextStyle(color: theme.colorScheme.mutedForeground),
        hintStyle: TextStyle(color: theme.colorScheme.mutedForeground),
        floatingLabelStyle: TextStyle(color: theme.colorScheme.primary),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        border: m.OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: theme.colorScheme.border),
        ),
        enabledBorder: m.OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: theme.colorScheme.border),
        ),
        focusedBorder: m.OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: theme.colorScheme.primary, width: 1.5),
        ),
      ),
      elevatedButtonTheme: m.ElevatedButtonThemeData(
        style: m.ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          textStyle: const TextStyle(fontSize: 12.5, fontWeight: FontWeight.w600),
          minimumSize: const Size(0, 36),
        ),
      ),
      outlinedButtonTheme: m.OutlinedButtonThemeData(
        style: m.OutlinedButton.styleFrom(
          foregroundColor: theme.colorScheme.foreground,
          side: BorderSide(color: theme.colorScheme.border),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          textStyle: const TextStyle(fontSize: 12.5, fontWeight: FontWeight.w500),
          minimumSize: const Size(0, 36),
        ),
      ),
      iconButtonTheme: m.IconButtonThemeData(
        style: m.IconButton.styleFrom(
          minimumSize: const Size(36, 36),
          maximumSize: const Size(36, 36),
          padding: EdgeInsets.zero,
        ),
      ),
      chipTheme: m.ChipThemeData(
        backgroundColor: theme.colorScheme.secondary,
        selectedColor: theme.colorScheme.primary.withValues(alpha: 0.2),
        labelStyle: TextStyle(color: theme.colorScheme.foreground),
        secondaryLabelStyle: TextStyle(color: theme.colorScheme.primary),
        side: BorderSide(color: theme.colorScheme.border),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      dialogTheme: m.DialogThemeData(
        backgroundColor: theme.colorScheme.card,
        titleTextStyle: TextStyle(
          color: theme.colorScheme.foreground,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        contentTextStyle: TextStyle(
          color: theme.colorScheme.foreground,
          fontSize: 14,
        ),
      ),
      bottomSheetTheme: m.BottomSheetThemeData(
        backgroundColor: theme.colorScheme.background,
        modalBackgroundColor: theme.colorScheme.background,
        surfaceTintColor: const Color(0x00000000),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
      ),
      datePickerTheme: m.DatePickerThemeData(
        backgroundColor: theme.colorScheme.card,
        headerBackgroundColor: theme.colorScheme.primary,
        headerForegroundColor: theme.colorScheme.primaryForeground,
        surfaceTintColor: const Color(0x00000000),
      ),
    );
  }
}
