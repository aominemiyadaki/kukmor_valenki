import 'package:flutter/material.dart';

/// Эстетичная палитра персональных цветов для лент бронирований.
/// Предоставляет стабильный гармоничный цвет для каждого ID брони.
abstract final class BookingColorPalette {
  static const List<Color> _lightPalette = [
    Color(0xFF2563EB), // Royal Blue
    Color(0xFF059669), // Emerald
    Color(0xFF7C3AED), // Violet
    Color(0xFFEA580C), // Amber / Coral
    Color(0xFFDB2777), // Rose
    Color(0xFF0891B2), // Cyan
    Color(0xFF4F46E5), // Indigo
    Color(0xFF0D9488), // Teal
  ];

  static const List<Color> _darkPalette = [
    Color(0xFF3B82F6), // Blue 500
    Color(0xFF10B981), // Emerald 500
    Color(0xFF8B5CF6), // Purple 500
    Color(0xFFF97316), // Orange 500
    Color(0xFFEC4899), // Pink 500
    Color(0xFF06B6D4), // Cyan 500
    Color(0xFF6366F1), // Indigo 500
    Color(0xFF14B8A6), // Teal 500
  ];

  /// Получить стабильный цвет ленты для бронирования
  static Color getColor(String bookingId, {bool isDark = false}) {
    final hash = bookingId.hashCode.abs();
    final palette = isDark ? _darkPalette : _lightPalette;
    return palette[hash % palette.length];
  }

  /// Получить контрастный цвет текста для ленты
  static Color getTextColor(Color backgroundColor) {
    return Colors.white;
  }
}
