import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF3B5A40);
  static const Color accentColor = Color(0xFF795548);
  static const Color textColor = Color(0xFF2F2F2F);
  static const Color textAccentColor = Color(0xFFD4C6B3);
  static const Color backgroundColor = Color(0xFFD4C6B3);
}

const ColorScheme appColorScheme = ColorScheme(
  primary: AppColors.primaryColor,
  primaryContainer: Color(0xFF4F6A55), 
  secondary: AppColors.accentColor,       
  secondaryContainer: Color(0xFF8D6E63),
  background: AppColors.backgroundColor,
  surface: AppColors.primaryColor,
  onPrimary: AppColors.textAccentColor,
  onSecondary: AppColors.textColor,
  onBackground: AppColors.textColor,
  onSurface: AppColors.textColor,
  error: Colors.red,
  onError: Colors.white,
  brightness: Brightness.light,
);

class AppTextStyles {
  static const TextStyle title = TextStyle(
    fontFamily: 'Rokkitt',
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );
  static const TextStyle body = TextStyle(
    fontFamily: 'Quicksand',
    fontSize: 16.0,
    color: AppColors.textColor,
  );
}

final ThemeData appTheme = ThemeData(
  colorScheme: appColorScheme,
  textTheme: const TextTheme(
    titleMedium: AppTextStyles.title,
    bodyMedium: AppTextStyles.body,
  ),
  useMaterial3: true,
  scaffoldBackgroundColor: appColorScheme.background,
);

class AppIcons {
  static const String home = "assets/icons/home.png";
  static const String dictionary = "assets/icons/dictionary.png";
  static const String map = "assets/icons/map.png";
  static const String tradition = "assets/icons/tradition.png";
  static const String user = "assets/icons/user.png";


  static Widget icon(String path, {double size = 24.0, Color color = backgroundColor}) {
    return Image.asset(
      path,
      width: size,
      height: size,
      color: color,
    );
  }

}
