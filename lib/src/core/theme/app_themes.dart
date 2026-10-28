part of 'recources.dart';

abstract final class AppThemes {
  static ThemeData get light =>
      ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal));
  static ThemeData get dark => ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    fontFamily: 'Inter',
    fontFamilyFallback: const ['Noto Sans Symbols 2', 'Segoe UI Emoji'],
    textTheme: const TextTheme(
      bodyMedium: TextStyle(letterSpacing: 0),
      bodyLarge: TextStyle(letterSpacing: 0),
    ),
    scaffoldBackgroundColor: AppColors.explorerBackground,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.explorerAccent,
      onPrimary: AppColors.explorerBackground,
      surface: AppColors.explorerSurface,
      onSurface: AppColors.explorerText,
      secondary: AppColors.alive,
      error: AppColors.dead,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.explorerBackground,
      foregroundColor: AppColors.explorerText,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.explorerSurface,
      hintStyle: const TextStyle(color: AppColors.explorerMuted, fontSize: 14),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: AppColors.explorerAccent),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: const Size(226, 51),
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
