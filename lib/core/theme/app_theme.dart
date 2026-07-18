/// إدارة الثيمات - الوضع الفاتح والداكن
library;

import 'package:flutter/material.dart';
import 'app_colors.dart';

/// الثيم الرئيسي للتطبيق
class AppTheme {
  AppTheme._();

  /// الحصول على مخطط الألوان الفاتح
  static const ColorScheme _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColorsLight.primary,
    onPrimary: AppColorsLight.onPrimary,
    primaryContainer: AppColorsLight.primaryContainer,
    onPrimaryContainer: Color(0xFF002105),
    secondary: AppColorsLight.secondary,
    onSecondary: AppColorsLight.onSecondary,
    secondaryContainer: AppColorsLight.secondaryContainer,
    onSecondaryContainer: Color(0xFF003A18),
    tertiary: AppColorsLight.tertiary,
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: AppColorsLight.tertiaryContainer,
    onTertiaryContainer: Color(0xFF002019),
    error: AppColorsLight.error,
    onError: AppColorsLight.onError,
    errorContainer: AppColorsLight.errorContainer,
    onErrorContainer: Color(0xFF410002),
    surface: AppColorsLight.surface,
    onSurface: AppColorsLight.onSurface,
    surfaceContainerHighest: Color(0xFFEFEFF4),
    outline: AppColorsLight.outline,
    outlineVariant: AppColorsLight.outlineVariant,
    shadow: AppColorsLight.shadow,
    scrim: AppColorsLight.scrim,
    inverseSurface: AppColorsLight.inverseSurface,
    onInverseSurface: AppColorsLight.inverseOnSurface,
    inversePrimary: AppColorsLight.inversePrimary,
  );

  /// الحصول على مخطط الألوان الداكن
  static const ColorScheme _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColorsDark.primary,
    onPrimary: AppColorsDark.onPrimary,
    primaryContainer: AppColorsDark.primaryContainer,
    onPrimaryContainer: Color(0xFFA6F5AD),
    secondary: AppColorsDark.secondary,
    onSecondary: AppColorsDark.onSecondary,
    secondaryContainer: AppColorsDark.secondaryContainer,
    onSecondaryContainer: Color(0xFFA5D6A7),
    tertiary: AppColorsDark.tertiary,
    onTertiary: Color(0xFF003727),
    tertiaryContainer: AppColorsDark.tertiaryContainer,
    onTertiaryContainer: Color(0xFF80CBC4),
    error: AppColorsDark.error,
    onError: AppColorsDark.onError,
    errorContainer: AppColorsDark.errorContainer,
    onErrorContainer: Color(0xFF93000A),
    surface: AppColorsDark.surface,
    onSurface: AppColorsDark.onSurface,
    surfaceContainerHighest: Color(0xFF2B2930),
    outline: AppColorsDark.outline,
    outlineVariant: AppColorsDark.outlineVariant,
    shadow: AppColorsDark.shadow,
    scrim: AppColorsDark.scrim,
    inverseSurface: AppColorsDark.inverseSurface,
    onInverseSurface: AppColorsDark.inverseOnSurface,
    inversePrimary: AppColorsDark.inversePrimary,
  );

  /// الحصول على الثيم الفاتح
  static ThemeData get lightTheme => _createTheme(_lightColorScheme, false);

  /// الحصول على الثيم الداكن
  static ThemeData get darkTheme => _createTheme(_darkColorScheme, true);

  /// إنشاء ثيم مخصص
  static ThemeData _createTheme(ColorScheme colorScheme, bool isDark) {
    final colors = _ThemeColors(isDark);

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      brightness: isDark ? Brightness.dark : Brightness.light,

      // الخط الافتراضي
      fontFamily: 'Cairo',

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: colors.appBarBackground,
        foregroundColor: colors.appBarForeground,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontFamily: 'Cairo',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColorsLight.appBarForeground,
        ),
        iconTheme: IconThemeData(color: colors.appBarForeground),
      ),

      // Card Theme
      cardTheme: CardThemeData(
        color: colors.cardBackground,
        elevation: 2,
        shadowColor: colors.cardShadow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: EdgeInsets.zero,
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.primary,
          foregroundColor: colors.onPrimary,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontFamily: 'Cairo',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      // Filled Button Theme
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: colors.primary,
          foregroundColor: colors.onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontFamily: 'Cairo',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      // Outlined Button Theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colors.primary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          side: BorderSide(color: colors.outline),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontFamily: 'Cairo',
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colors.primary,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          textStyle: const TextStyle(
            fontFamily: 'Cairo',
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colors.inputFill,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: colors.inputBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: colors.inputBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: colors.inputFocusedBorder, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: colors.error),
        ),
        prefixIconColor: colors.outline,
        suffixIconColor: colors.outline,
        labelStyle: TextStyle(
          fontFamily: 'Cairo',
          color: colors.onSurface.withValues(alpha: 0.7),
        ),
        hintStyle: TextStyle(
          fontFamily: 'Cairo',
          color: colors.onSurface.withValues(alpha: 0.4),
        ),
      ),

      // Floating Action Button Theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colors.fabBackground,
        foregroundColor: colors.fabForeground,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      // Navigation Bar Theme
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: colors.navigationBar,
        indicatorColor: colors.navigationBarSelected.withValues(alpha: 0.15),
        elevation: 8,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(
              fontFamily: 'Cairo',
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: colors.navigationBarSelected,
            );
          }
          return TextStyle(
            fontFamily: 'Cairo',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: colors.navigationBarUnselected,
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(color: colors.navigationBarSelected);
          }
          return IconThemeData(color: colors.navigationBarUnselected);
        }),
      ),

      // Bottom Sheet Theme
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colors.bottomSheet,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
      ),

      // Dialog Theme
      dialogTheme: DialogThemeData(
        backgroundColor: colors.dialogBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        titleTextStyle: TextStyle(
          fontFamily: 'Cairo',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: colors.onSurface,
        ),
        contentTextStyle: TextStyle(
          fontFamily: 'Cairo',
          fontSize: 14,
          color: colors.onSurface.withValues(alpha: 0.8),
        ),
      ),

      // Snackbar Theme
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colors.snackbarBackground,
        contentTextStyle: TextStyle(
          fontFamily: 'Cairo',
          color: colors.snackbarForeground,
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),

      // Divider Theme
      dividerTheme: DividerThemeData(
        color: colors.divider,
        thickness: 1,
      ),

      // Chip Theme
      chipTheme: ChipThemeData(
        backgroundColor: colors.container,
        selectedColor: colors.primaryContainer,
        labelStyle: TextStyle(
          fontFamily: 'Cairo',
          color: colors.onContainer,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),

      // Checkbox Theme
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colors.primary;
          }
          return Colors.transparent;
        }),
        checkColor: WidgetStateProperty.all(colors.onPrimary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),

      // Switch Theme
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colors.primary;
          }
          return colors.outline;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colors.primary.withValues(alpha: 0.5);
          }
          return colors.outlineVariant;
        }),
      ),

      // Progress Indicator Theme
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: colors.primary,
        linearTrackColor: colors.primary.withValues(alpha: 0.2),
        circularTrackColor: colors.primary.withValues(alpha: 0.2),
      ),

      // Tooltip Theme
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: colors.inverseSurface,
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: TextStyle(
          fontFamily: 'Cairo',
          color: colors.inverseOnSurface,
          fontSize: 12,
        ),
      ),

      // Tab Bar Theme
      tabBarTheme: TabBarThemeData(
        labelColor: colors.primary,
        unselectedLabelColor: colors.outline,
        indicatorColor: colors.primary,
        labelStyle: const TextStyle(
          fontFamily: 'Cairo',
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: 'Cairo',
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),

      // List Tile Theme
      listTileTheme: ListTileThemeData(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

class _ThemeColors {
  final bool isDark;
  const _ThemeColors(this.isDark);

  Color get primary => isDark ? AppColorsDark.primary : AppColorsLight.primary;
  Color get primaryContainer =>
      isDark ? AppColorsDark.primaryContainer : AppColorsLight.primaryContainer;
  Color get onPrimary =>
      isDark ? AppColorsDark.onPrimary : AppColorsLight.onPrimary;
  Color get secondary =>
      isDark ? AppColorsDark.secondary : AppColorsLight.secondary;
  Color get secondaryContainer => isDark
      ? AppColorsDark.secondaryContainer
      : AppColorsLight.secondaryContainer;
  Color get onSecondary =>
      isDark ? AppColorsDark.onSecondary : AppColorsLight.onSecondary;
  Color get tertiary =>
      isDark ? AppColorsDark.tertiary : AppColorsLight.tertiary;
  Color get tertiaryContainer => isDark
      ? AppColorsDark.tertiaryContainer
      : AppColorsLight.tertiaryContainer;
  Color get error => isDark ? AppColorsDark.error : AppColorsLight.error;
  Color get errorContainer =>
      isDark ? AppColorsDark.errorContainer : AppColorsLight.errorContainer;
  Color get onError => isDark ? AppColorsDark.onError : AppColorsLight.onError;
  Color get success => isDark ? AppColorsDark.success : AppColorsLight.success;
  Color get warning => isDark ? AppColorsDark.warning : AppColorsLight.warning;
  Color get info => isDark ? AppColorsDark.info : AppColorsLight.info;
  Color get background =>
      isDark ? AppColorsDark.background : AppColorsLight.background;
  Color get surface => isDark ? AppColorsDark.surface : AppColorsLight.surface;
  Color get onBackground =>
      isDark ? AppColorsDark.onBackground : AppColorsLight.onBackground;
  Color get onSurface =>
      isDark ? AppColorsDark.onSurface : AppColorsLight.onSurface;
  Color get outline => isDark ? AppColorsDark.outline : AppColorsLight.outline;
  Color get outlineVariant =>
      isDark ? AppColorsDark.outlineVariant : AppColorsLight.outlineVariant;
  Color get container =>
      isDark ? AppColorsDark.container : AppColorsLight.container;
  Color get onContainer =>
      isDark ? AppColorsDark.onContainer : AppColorsLight.onContainer;
  Color get shadow => isDark ? AppColorsDark.shadow : AppColorsLight.shadow;
  Color get scrim => isDark ? AppColorsDark.scrim : AppColorsLight.scrim;
  Color get inverseSurface =>
      isDark ? AppColorsDark.inverseSurface : AppColorsLight.inverseSurface;
  Color get inverseOnSurface =>
      isDark ? AppColorsDark.inverseOnSurface : AppColorsLight.inverseOnSurface;
  Color get inversePrimary =>
      isDark ? AppColorsDark.inversePrimary : AppColorsLight.inversePrimary;
  Color get present => isDark ? AppColorsDark.present : AppColorsLight.present;
  Color get absent => isDark ? AppColorsDark.absent : AppColorsLight.absent;
  Color get late => isDark ? AppColorsDark.late : AppColorsLight.late;
  Color get excused => isDark ? AppColorsDark.excused : AppColorsLight.excused;
  Color get cardBackground =>
      isDark ? AppColorsDark.cardBackground : AppColorsLight.cardBackground;
  Color get cardShadow =>
      isDark ? AppColorsDark.cardShadow : AppColorsLight.cardShadow;
  Color get navigationBar =>
      isDark ? AppColorsDark.navigationBar : AppColorsLight.navigationBar;
  Color get navigationBarSelected => isDark
      ? AppColorsDark.navigationBarSelected
      : AppColorsLight.navigationBarSelected;
  Color get navigationBarUnselected => isDark
      ? AppColorsDark.navigationBarUnselected
      : AppColorsLight.navigationBarUnselected;
  Color get appBarBackground =>
      isDark ? AppColorsDark.appBarBackground : AppColorsLight.appBarBackground;
  Color get appBarForeground =>
      isDark ? AppColorsDark.appBarForeground : AppColorsLight.appBarForeground;
  Color get fabBackground =>
      isDark ? AppColorsDark.fabBackground : AppColorsLight.fabBackground;
  Color get fabForeground =>
      isDark ? AppColorsDark.fabForeground : AppColorsLight.fabForeground;
  Color get inputFill =>
      isDark ? AppColorsDark.inputFill : AppColorsLight.inputFill;
  Color get inputBorder =>
      isDark ? AppColorsDark.inputBorder : AppColorsLight.inputBorder;
  Color get inputFocusedBorder => isDark
      ? AppColorsDark.inputFocusedBorder
      : AppColorsLight.inputFocusedBorder;
  Color get divider => isDark ? AppColorsDark.divider : AppColorsLight.divider;
  Color get snackbarBackground => isDark
      ? AppColorsDark.snackbarBackground
      : AppColorsLight.snackbarBackground;
  Color get snackbarForeground => isDark
      ? AppColorsDark.snackbarForeground
      : AppColorsLight.snackbarForeground;
  Color get bottomSheet =>
      isDark ? AppColorsDark.bottomSheet : AppColorsLight.bottomSheet;
  Color get bottomSheetModalBarrier => isDark
      ? AppColorsDark.bottomSheetModalBarrier
      : AppColorsLight.bottomSheetModalBarrier;
  Color get dialogBackground =>
      isDark ? AppColorsDark.dialogBackground : AppColorsLight.dialogBackground;
  Color get dialogOverlay =>
      isDark ? AppColorsDark.dialogOverlay : AppColorsLight.dialogOverlay;
}
