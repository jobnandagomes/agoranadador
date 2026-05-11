import 'package:flutter/material.dart';

/// Arquivo de tema do app Agora Nadador.
///
/// Define o tema claro usando Material 3 com cores padronizadas e
/// tipografia consistente.
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0xFF2196F3);
  static const Color primaryVariantColor = Color(0xFF1976D2);
  static const Color secondaryColor = Color(0xFF03DAC6);

  static ThemeData get lightTheme {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
      secondary: secondaryColor,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.surface,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.inversePrimary,
        foregroundColor: colorScheme.onInverseSurface,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      typography: Typography.material2021(),
    );
  }
}